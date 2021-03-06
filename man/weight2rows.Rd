% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/weight2rows.R
\name{weight2rows}
\alias{weight2rows}
\title{Expand a weighted data frame to an equivalent unweighted}
\usage{
weight2rows(DT, weight.var, rows.out = NULL, discard_weight.var = FALSE)
}
\arguments{
\item{DT}{A \code{data.table}. Will be converted to one if possible.}

\item{weight.var}{Variable in \code{DT} to be used as weights.}

\item{rows.out}{If not \code{NULL} (the default) specifies the number of rows in the result;
otherwise the number of rows will be \code{sum(DT[[weight.var]])}.
(Due to rounding, this figures are inexact.)

Since \code{v1.4.0}, if \code{0 < rows.out < 1} then taken to be a sample of
the unweighted table. (So \code{rows.out = 0.1} would give a 10\% sample.)}

\item{discard_weight.var}{If \code{FALSE}, the default, \code{weight.var}
in \code{DT} will be \code{1} for each row in the result or a new weight 
if \code{rows.out} is given. Otherwise, \code{TRUE} drops the column entirely.}
}
\value{
\code{DT} but with the number of rows expanded to \code{sum(DT[[weight.var]])} to reflect the weighting.
}
\description{
Present since \code{v1.0.0}.
 Argument \code{rows.out} available since \code{v1.3.0}; 
 \code{rows.out < 1} supported since \code{v 1.4.0}.
 Argument \code{discard_weight.var} available since \code{v1.3.0}.
}
\examples{

library(data.table)
DT <- data.table(x = 1:5, y = c(1, 1, 1, 1, 2))
weight2rows(DT, "y")
weight2rows(DT, "y", rows.out = 5)

}
