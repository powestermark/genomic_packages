\name{TxDb.Mmusculus.UCSC.mm10.ncbiRefSeqCurated}
\docType{package}

\alias{TxDb.Mmusculus.UCSC.mm10.ncbiRefSeqCurated-package}
\alias{TxDb.Mmusculus.UCSC.mm10.ncbiRefSeqCurated}
\alias{TxDb.Mmusculus.UCSC.mm10.ncbiRefSeqCurated}


\title{Annotation package for TxDb object(s)}

\description{  
  This package loads one or more TxDb objects.  Such TxDb
  objects are an R interface to prefabricated databases contained by
  this package.

  The names of any objects exposed by this package indicate the origin and
  resources exposed.  So for example TxDb.Hsapiens.UCSC.hg19.knownGene
  would be a TxDb object, of Homo sapiens data from UCSC build
  hg19 based on the knownGene Track.
}

\note{
  This data package was made from resources at UCSC on
  2024-08-30 17:17:07 +0200 (Fri, 30 Aug 2024) and based on the mm10 genome based on the ncbiRefSeqCurated table
}

\author{Pal O. Westermark <westermark@fbn-dummerstorf.de> [cre]}


\seealso{
  \link[GenomicFeatures]{transcripts},
  \link[GenomicFeatures]{transcriptsBy}
}

\examples{
## load the library
library(TxDb.Mmusculus.UCSC.mm10.ncbiRefSeqCurated)
## list the contents that are loaded into memory
ls('package:TxDb.Mmusculus.UCSC.mm10.ncbiRefSeqCurated')
## show the db object that is loaded by calling it's name
TxDb.Mmusculus.UCSC.mm10.ncbiRefSeqCurated

}

\keyword{package}
\keyword{data}
