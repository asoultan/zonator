% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/zvariant-methods.R
\docType{methods}
\name{copy_zvariant}
\alias{copy_zvariant}
\alias{copy_zvariant,Zvariant,character,character-method}
\alias{copy_zvariant}
\title{Copy existing variant as a new \code{Zvariant} object.}
\usage{
copy_zvariant(x, name, dir)

\S4method{copy_zvariant}{Zvariant,character,character}(x, name, dir)
}
\arguments{
\item{x}{Zvariant object.}

\item{name}{Characted string naming the copied variant.}

\item{dir}{Characted string directory where the new variant is created on
file system.}
}
\value{
\code{Zvariant} object
}
\description{
Corresponding files on the file system are immediately created. In orderd
to modify the variant, manipulate the returned \code{Zvariant} object and
use \code{\link{save_zvariant}} method.
}
\details{
If the variant being copied has results, they are not copied to the new
variant.
}
\note{
Relative paths in spp-file are translated into absolute paths as
otherwise dealing with them might be tricky.
}
\seealso{
\code{\link{Zvariant-class}} \code{\link{save_zvariant}}
}
\author{
Joona Lehtomaki \email{joona.lehtomaki@gmail.com}
}
