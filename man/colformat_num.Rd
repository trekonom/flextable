% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/formatters.R
\name{colformat_num}
\alias{colformat_num}
\alias{colformat_num.flextable}
\title{format numeric cells}
\usage{
colformat_num(x, ...)

\method{colformat_num}{flextable}(
  x,
  j = NULL,
  col_keys = NULL,
  big.mark = ",",
  digits = 2,
  na_str = "",
  prefix = "",
  suffix = "",
  ...
)
}
\arguments{
\item{x}{a flextable object}

\item{...}{additional arguments, i can be used to specify a
row selector.}

\item{j}{columns selection.}

\item{col_keys}{names of the colkeys. Will be deprectated in favor of j in the next
version.}

\item{big.mark, digits}{see \code{\link[base]{formatC}}}

\item{na_str}{string to be used for NA values}

\item{prefix}{string to be used as prefix or suffix}

\item{suffix}{string to be used as prefix or suffix}
}
\description{
Format numeric cells in a flextable.
}
\section{Illustrations}{


\if{html}{\figure{fig_colformat_num_1.png}{options: width=50\%}}
}

\examples{
dat <- iris
dat[1:4, 1] <- NA
dat[, 2] <- dat[, 2] * 1000000

ft <- flextable(head(dat))
j = c("Sepal.Length", "Sepal.Width",
   "Petal.Length", "Petal.Width")
ft <- colformat_num(
  x = ft, j = j,
  big.mark=",", digits = 2, na_str = "N/A")
autofit(ft)
}
\seealso{
Other cells formatters: 
\code{\link{colformat_char}()},
\code{\link{colformat_int}()},
\code{\link{colformat_lgl}()},
\code{\link{compose}()}
}
\concept{cells formatters}
