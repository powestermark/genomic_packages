
# Note that locally, RMariaDB works with mariadb-connector-c version 3.3.8,
# but not with 3.4.1.
# Install older brew formula version

# Steps to Install a Specific Version of a Homebrew Formula from a Raw `.rb` File

## Step 1: Find the `.rb` File on GitHub

# 1. Go to the [Homebrew/homebrew-core repository](https://github.com/Homebrew/homebrew-core) on GitHub.
# 2. Search for the formula you want, such as `mariadb-connector-c`.
# 3. Navigate to the commit history of the formula to find the version you want (e.g., version 3.3.8).
# 4. Click on the commit, then click "View file" and "Raw" to get the raw URL of the `.rb` file.

## Step 2: Download the `.rb` File Using `curl`

# 1. Use `curl` to download the `.rb` file to your local machine:
#
#   curl -o ~/local-homebrew/Formula/mariadb-connector-c.rb https://raw.githubusercontent.com/Homebrew/homebrew-core/4622e198f5a69a284174b11bf4593c09eb485b47/Formula/m/mariadb-connector-c.rb

## Step 3: install formula

# brew install --formula ~/local-homebrew/Formula/mariadb-connector-c.rb
# brew pin mariadb-connector-c



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
