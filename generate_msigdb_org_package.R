rm(list = ls())

library(msigdbr)
library(GSEABase)
library(rjson)
library(tidyverse)
library(pwrutilities)



# Download manually from: (requires login with email address)
# https://www.gsea-msigdb.org/gsea/msigdb/mouse/collections.jsp
# NOTE: be sure to state the version below at AnnotationForge::makeOrgPackage()

# The json file contains GO IDs but not ENTREZ IDs
m5import <- rjson::fromJSON(file = "m5.go.v2024.1.Mm.json.gz") %>%
  tibble::enframe(name = "go_name") %>%
  tidyr::unnest_wider(value) %>%
  dplyr::transmute(go_name, go_id = exactSource)

# The gmt file contains ENTREZ IDs but GO names rather than IDs
m5entrez <- GSEABase::getGmt(
  "m5.go.v2024.1.Mm.entrez.gmt.gz",
  geneIdType = EntrezIdentifier(),
  collectionType = BroadCollection(category = "c5")
) %>%
  GSEABase::geneIds() %>%
  tibble::enframe(name = "go_name") %>%
  tidyr::unnest_longer(value, values_to = "entrez_id") %>%
  dplyr::inner_join(m5import)


m5_annoforge <- m5entrez %>%
  dplyr::transmute(GID = entrez_id,
                   GO = go_id,
                   EVIDENCE = "IC") %>%
  dplyr::filter(str_detect(GO, "^GO:")) %>%
  distinct() %>% drop_na()

gene_info <- tibble(
  GID = unique(m5_annoforge$GID),
  ENTREZID = GID,
  SYMBOL = e2m(ENTREZID)
)



# "hack": obtain taxonomy ID from msidbr
taxon_id <- msigdbr(
  species = "Mus musculus",
  category = "C5",
  subcategory = "CC") %>%
  pull(taxon_id) %>% unique


# checked that the GOALL field contains more than GO => msigdb doesn't contain
# (all) ancestor terms for a given gene
pkg_path <- AnnotationForge::makeOrgPackage(
  go = m5_annoforge,
  gene_info = gene_info,
  # go_info = go_info,
  version = "2024.1",
  maintainer = "Pal O. Westermark <westermark@fbn-dummerstorf.de>",
  author = "Pal O. Westermark <westermark@fbn-dummerstorf.de>",
  outputDir = ".",
  tax_id = taxon_id,
  genus = "Mm",
  species = "msigdbC5",
  goTable = "go"
)





output_file <- paste0(pkg_path, ".tar.gz")
utils::tar(tarfile = output_file, files = pkg_path, compression = "gzip")
unlink(pkg_path, recursive = TRUE)

renv::install(output_file)
renv::settings$ignored.packages("org.MmsigdbC5.eg.db")
