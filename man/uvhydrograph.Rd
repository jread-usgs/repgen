% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/sig-uvhydrograph.R
\docType{methods}
\name{uvhydrograph}
\alias{uvhydrograph}
\alias{uvhydrograph,character,character-method}
\alias{uvhydrograph,list,character-method}
\alias{uvhydrograph,list,missing-method}
\title{UV Hydrograph report}
\usage{
uvhydrograph(data, output, ...)

\S4method{uvhydrograph}{list,character}(data, output, ...)

\S4method{uvhydrograph}{character,character}(data, output, ...)

\S4method{uvhydrograph}{list,missing}(data, output, ...)
}
\arguments{
\item{data}{local data (as list) or URL}

\item{output}{a supported pandoc output format (see \code{system("pandoc -h")} for options)}

\item{...}{additional params passed to GET or authenticateUser}
}
\description{
UV Hydrograph report
}
\examples{
library(gsplot)
library(jsonlite)
library(lubridate)
data <- fromJSON(system.file('extdata','uvhydro-example.json', package = 'repgen'))
uvhydrograph(data, 'html', 'Author Name')
\dontrun{
url <- paste0('https://nwissddvasvis01.cr.usgs.gov/service/timeseries/reports/swuvhydrograph/',
'?station=05421682&dischargeIdentifier=Discharge.ft\%5E3\%2Fs&stageIdentifier=',
'Gage+height.ft.Work&dailyDischargeIdentifier=Discharge.ft\%5E3\%2Fs.Mean',
'&ratingModelIdentifier=Gage+height-Discharge.STGQ&waterYear=2011')

# pass in additional params to authenticateUser
uvhydrograph(url, 'html', verbose = TRUE, username = 'bbadger', password = '12345')
uvhydrograph(url, 'html', 'Author Name')
}
}

