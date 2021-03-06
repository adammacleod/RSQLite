Hi


This is an automated email to let you know about the upcoming release of {{{my_package}}} (version {{{my_version}}}), which will be submitted to CRAN on {{{ date }}}. My apologies for the previous annoncement, which turned out to be premature. In the meantime, I've updated {{{ my_package }}} to improve compatibility with the currently released CRAN version.

To check for potential problems, I ran `R CMD check` on your package {{{your_package}}} (version {{{your_version}}}). I found {{{your_summary}}}.

{{#you_have_problems}}
{{{your_results}}}

{{#you_cant_install}}Looks like I couldn't install your package {{{your_package}}}, I'd recommend you check it yourself. Unfortunately I don't have the resources to manually fix installation failures.

{{/you_cant_install}}
{{^you_cant_install}}Almost all CRAN and Bioconductor packages that I've checked ran their checks without new ERRORs. I've contacted individually the maintainers of packages with new ERRORs. However, several packages had new WARNINGs or NOTEs which didn't occur with {{{my_package}}} 1.0.0, most often due to new deprecation warnings. The check times often improved comparing to {{{my_package}}} 1.0.0, but in several cases I observed a substantial decline, of which I also informed the maintainers of the affected packages.

Regressions may arise due to changes in the public API, which have been done to improve compatibility with the upcoming DBI specification. Among others, the `fetch()`, `dbSendPreparedQuery()`, `dbGetPreparedQuery()`, `dbGetException()`, and `dbListResults()` now give a deprecation warning. Use `dbFetch(..., row.names = FALSE)` for retrieving data (use other values for `row.names` for automatic conversion of a column to row names), `dbBind()` for parametrized queries, and `conditionMessage()` to retrieve the error message. The last error cannot be retrieved `dbGetException()` anymore. Listing the results of a connection is not supported anymore, at most one active result set is supported per connection. Furthermore, `dbWriteTable(append = TRUE)` now matches by column name instead of column position; if column names do not match, a warning is given.

Please submit an update of your package {{{your_package}}} to fix any ERRORs or WARNINGs. Please pay attention to the deprecation warnings, they may become errors at some point in the future. Other problems may not be caused by the update to {{{my_package}}}, but it really makes life easier if you also fix any other problems that may have accumulated over time. Please also try to minimise the NOTEs.

{{/you_cant_install}}

To get the development version of {{{my_package}}} so you can run the checks yourself, you can run:

    # install.packages("devtools")
    devtools::install_github("{{my_github}}")

To see what's changed visit <https://github.com/{{{my_github}}}/blob/master/NEWS.md>.

{{/you_have_problems}}
{{^you_have_problems}}It looks like everything is ok, so you don't need to take any action, but you might want to read the NEWS, <https://github.com/{{{my_github}}}/blob/master/NEWS.md>, to see what's changed.

{{/you_have_problems}}

If you have any questions about this email, please feel free to respond directly.


Regards,

{{{ me }}}
