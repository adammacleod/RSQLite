% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/table.R
\docType{methods}
\name{dbRemoveTable,SQLiteConnection,character-method}
\alias{dbRemoveTable,SQLiteConnection,character-method}
\title{Remove a table from the database}
\usage{
\S4method{dbRemoveTable}{SQLiteConnection,character}(conn, name, ...)
}
\arguments{
\item{conn}{An existing \code{\linkS4class{SQLiteConnection}}}

\item{name}{character vector of length 1 giving name of table to remove}

\item{...}{Needed for compatibility with generic. Otherwise ignored.}
}
\description{
Executes the SQL \code{DROP TABLE}.
}
\examples{
library(DBI)
con <- dbConnect(RSQLite::SQLite())
dbWriteTable(con, "test", data.frame(a = 1))
dbListTables(con)
dbRemoveTable(con, "test")
dbListTables(con)
dbDisconnect(con)
}
\seealso{
The corresponding generic function \code{\link[DBI:dbRemoveTable]{DBI::dbRemoveTable()}}.
}

