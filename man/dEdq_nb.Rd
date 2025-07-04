% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dEdq_nb.R
\name{dEdq_nb}
\alias{dEdq_nb}
\title{Compute Partial Derivatives of Expected Values for a One-inflated Zero-truncated Negative Binomial Model}
\usage{
dEdq_nb(b, g, a, X, Z, dummies, formula)
}
\arguments{
\item{b}{Numeric vector of coefficients for the rate parameter.}

\item{g}{Numeric vector of coefficients for the inflation process.}

\item{a}{Numeric scalar, the overdispersion parameter of the negative binomial distribution.}

\item{X}{Matrix of predictors for the main model, where rows correspond to observations 
and columns to covariates.}

\item{Z}{Matrix of predictors for the inflation process, structured similarly to `X`.}

\item{dummies}{Character vector of column names from `X` and `Z` that are considered 
dummy variables for which marginal effects need to be computed.}
}
\value{
A matrix of partial derivatives (or marginal effects) with rows corresponding to observations 
and columns to covariates. For dummy variables, marginal effects are calculated directly.
}
\description{
This internal function computes the partial derivatives of expected values 
for a one-inflated zero-truncated negative binomial regression model with respect to covariates. 
It also accounts for marginal effects of dummy variables.
}
\details{
This function performs the following tasks:
- Computes partial derivatives of expected values with respect to covariates in `X` and `Z`.
- Handles marginal effects for dummy variables by comparing expected values when the dummy 
  variable is set to 0 versus 1.

The function is designed for internal use in the package and assumes that all input matrices 
and vectors are correctly specified. Any unexpected input structure may result in errors.
}
\seealso{
\code{\link{E_negbin}} for expected values in the negative binomial model.
}
\keyword{internal}
