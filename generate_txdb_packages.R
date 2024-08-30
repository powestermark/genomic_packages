
# Note that locally, RMariaDB works with mariadb-connector-c version 3.3.8,
# but not with 3.4.1.
library(txdbmaker)



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
