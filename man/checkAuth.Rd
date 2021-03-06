% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/utils-auth.R
\name{checkAuth}
\alias{checkAuth}
\title{check auth token and prompt for refresh if needed}
\usage{
checkAuth(updateIfStale = TRUE, ...)
}
\arguments{
\item{updateIfStale}{should \code{\link{authenticateUser}}
be called if token is stale?}

\item{...}{additional arguments passed to \code{\link{authenticateUser}}}
}
\value{
boolean for auth token state
}
\description{
check auth token and prompt for refresh if needed
}
\seealso{
\code{\link{authenticateUser}}
}
\keyword{internal}

