
# Note that locally, RMariaDB works with mariadb-connector-c version 3.3.8,
# but not with 3.4.1.
library(txdbmaker)
library(tidyverse)
library(pwrutilities)



pw <- person(given="Pal", middle="O.", family="Westermark",
             email="westermark@fbn-dummerstorf.de",
             role="cre")

txdbversion <- "0.08"

makeTxDbPackageFromUCSC(
  version=txdbversion,
  genome="mm9",
  maintainer=as.character(pw),
  author=as.character(pw),
  tablename="ensGene",
  circ_seqs = "chrM",
  miRBaseBuild="GRCm38",
)

makeTxDbPackageFromUCSC(
  version=txdbversion,
  genome="mm9",
  maintainer=as.character(pw),
  author=as.character(pw),
  tablename="refGene",
  circ_seqs = "chrM",
  miRBaseBuild="GRCm38"
)


makeTxDbPackageFromUCSC(
  version=txdbversion,
  genome="mm10",
  maintainer=as.character(pw),
  author=as.character(pw),
  tablename="ncbiRefSeqCurated",
  circ_seqs = "chrM",
  miRBaseBuild="GRCm38"
)


makeTxDbPackageFromUCSC(
  version=txdbversion,
  genome="mm39",
  maintainer=as.character(pw),
  author=as.character(pw),
  tablename="ncbiRefSeqCurated",
  circ_seqs = "chrM",
  miRBaseBuild="GRCm39"
)

makeTxDbPackageFromUCSC(
  version=txdbversion,
  genome="mm10",
  maintainer=as.character(pw),
  author=as.character(pw),
  tablename="ncbiRefSeq",
  circ_seqs = "chrM",
  miRBaseBuild="GRCm38"
)

makeTxDbPackageFromUCSC(
  version=txdbversion,
  genome="mm10",
  maintainer=as.character(pw),
  author=as.character(pw),
  tablename="refGene",
  circ_seqs = "chrM",
  miRBaseBuild="GRCm38"
)

makeTxDbPackageFromUCSC(
  version=txdbversion,
  genome="mm10",
  maintainer=as.character(pw),
  author=as.character(pw),
  tablename="knownGene",
  circ_seqs = "chrM",
  miRBaseBuild="GRCm38"
)


makeTxDbPackageFromBiomart(
  version = txdbversion,
  dataset = "mmusculus_gene_ensembl",
  maintainer = as.character(pw),
  author = as.character(pw),
  circ_seqs = "MT"
)

makeTxDbPackageFromUCSC(
  version=txdbversion,
  genome="dm3",
  maintainer=as.character(pw),
  author=as.character(pw),
  circ_seqs = "chrM",
  tablename="refGene"
)

makeTxDbPackageFromUCSC(
  version=txdbversion,
  genome="dm3",
  maintainer=as.character(pw),
  author=as.character(pw),
  circ_seqs = "chrM",
  tablename="flyBaseGene"
)
