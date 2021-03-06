% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/powerTOSTpaired.raw.R
\name{powerTOSTpaired.raw}
\alias{powerTOSTpaired.raw}
\title{Power analysis for TOST for dependent t-test (raw scores)}
\usage{
powerTOSTpaired.raw(alpha, statistical_power, low_eqbound, high_eqbound, sdif)
}
\arguments{
\item{alpha}{alpha used for the test (e.g., 0.05)}

\item{statistical_power}{desired power (e.g., 0.8)}

\item{low_eqbound}{lower equivalence bounds (e.g., -0.5) expressed in raw mean difference}

\item{high_eqbound}{upper equivalence bounds (e.g., 0.5) expressed in raw mean difference}

\item{sdif}{standard deviation of the difference scores}
}
\value{
Returns a string summarizing the power analysis, and a numeric variable for the number of pairs needed
}
\description{
Power analysis for TOST for dependent t-test (raw scores)
}
\section{References}{

Chow, S.-C., Wang, H., & Shao, J. (2007). Sample Size Calculations in Clinical Research, Second Edition - CRC Press Book. Formula 3.1.9
}
\examples{
## Sample size for alpha = 0.05, 80\% power, equivalence bounds of -3 and 3 in raw units
## and assuming a standard deviation of the difference scores of 10, and assuming a true effect = 0
powerTOSTpaired.raw(alpha=0.05,statistical_power=0.8,low_eqbound=-3, high_eqbound=3, sdif=10)
}

