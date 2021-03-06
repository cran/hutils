% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coalesce.R
\name{coalesce}
\alias{coalesce}
\title{Find first non-missing element}
\source{
Original source code but obviously inspired by \code{dplyr::coalesce}.
}
\usage{
coalesce(x, ...)
}
\arguments{
\item{x}{A vector}

\item{...}{Successive vectors whose values will replace the corresponding values in \code{x} if the value is 
(still) missing.}
}
\value{
\code{x} with missing values replaced by the first non-missing corresponding elements in \code{...}.
That is, if \code{... = A, B, C} and \code{x[i]} is missing, then \code{x[i]} is replaced by
\code{A[i]}. If \code{x[i]} is still missing (i.e. \code{A[i]} was itself \code{NA}), then it
is replaced by \code{B[i]}, \code{C[i]} until it is no longer missing or the list has been exhausted.
}
\description{
Lightweight version of \code{dplyr::coalesce}, with all the vices and virtues that come from such an
approach. 
Very similar logic (and timings to \code{dplyr::coalesce}), though no ability to use quosures etc.
One exception is that if \code{x} does not contain any missing values, it is returned immediately,
and ignores \code{...}. For example, \code{dplyr::coalesce(1:2, 1:3)} is an error, but 
\code{hutils::coalesce(1:2, 1:3)} is not.
}
\examples{
coalesce(c(1, NA, NA, 4), c(1, 2, NA, NA), c(3, 4, 5, NA))
}
