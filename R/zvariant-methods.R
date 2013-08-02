# This file is a part of zonator package

# Copyright (C) 2012-2014 Joona Lehtomäki <joona.lehtomaki@gmai.com>. All rights 
# reserved.

# This program is open source software; you can redistribute it and/or modify 
# it under the terms of the FreeBSD License (keep this notice): 
# http://en.wikipedia.org/wiki/BSD_licenses

# This program is distributed in the hope that it will be useful, 
# but WITHOUT ANY WARRANTY; without even the implied warranty of 
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

#' Plot Zonation variant's (class \code{Zvariant}) results (performance curves).
#' 
#' In the current implementation, only performance curves (feature-specific or
#' grouped) are plotted. In the future, plot method should handle other types 
#' of results as well.
#' 
#' Method itself is only a thin wrapper to functions 
#' \code{\link{plot.z.curves}} and \code{\link{plot.z.grp.curves}}.
#'
#' @param \code{x} Zvariant object.
#' @param \code{group} boolean indicating whether to plot grouped curves.
#' @param \code{...} Additional arguments passed on to the speficic plotting 
#'   functions.
#'
#' @return Zvariant object
#' 
#' @seealso \code{\link{Zvariant-class}}
#' 
#' @export
#' @docType methods
#' @rdname zvariant-methods
#' @aliases plot,Zvariant,boolean,ANY-method
#' 
#' @author Joona Lehtomaki \email{joona.lehtomaki@@gmail.com}
#' 
setGeneric("plot", function(x, group, ...) {
  standardGeneric("plot")
})

#' @rdname zvariant-methods
#' @aliases plot,Zvariant,logical,ANY-method
#' 
setMethod("plot", c("Zvariant", "logical"), function(x, group=FALSE, ...) {
  if (group) {
    plot.z.grp.curves(x@results[["grp.curves"]], ...)
  } else {
    plot.z.curves(x@results[["curves"]], ...)
  }
})