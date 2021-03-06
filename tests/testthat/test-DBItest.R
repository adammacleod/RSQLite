DBItest::test_all(c(
  # driver
  "constructor_strict",                         # relaxed constructor check still active
  "get_info_driver",                            # #117

  # connection
  "get_info_connection",                        # #117
  "cannot_disconnect_twice",                    # TODO

  # result
  "clear_result_return",                        # error: need to warn if closing result twice
  "stale_result_warning",                       # #120
  "data_logical",                               # not an error, no logical data type
  "data_logical_null_.*",                       # not an error, no logical data type
  "data_64_bit",                                # #65
  "data_64_bit_null_.*",                        # #65
  "data_raw_null_.*",                           # #115
  "data_date",                                  # #103
  "data_date_null_.*",                          # #xxx
  "data_time",                                  # syntax not supported
  "data_time_null_.*",                          # syntax not supported
  "data_timestamp",                             # syntax not supported
  "data_timestamp_null_.*",                     # syntax not supported
  "data_timestamp_utc",                         # syntax not supported
  "data_timestamp_utc_null_.*",                 # syntax not supported
  "data_timestamp_parens",                      # #104
  "data_timestamp_parens_null_.*",              # #xxx

  # sql
  "append_table_error",                         # #112
  "quote_identifier_not_vectorized",            # rstats-db/DBI#24
  "roundtrip_quotes",                           # #107
  "roundtrip_logical",                          # not an error, no logical data type
  "roundtrip_64_bit",                           # not an error, loose typing
  "roundtrip_raw",                              # #116
  "roundtrip_date",                             # #109
  "roundtrip_timestamp",                        # #110

  # result_meta
  "get_info_result",                            # rstats-db/DBI#55
  "bind_logical.*",                             # not an error, no logical data type
  "bind_date.*",                                # #114
  "bind_timestamp.*",                           # #114
  "read_only",                                  # default connection is read-write

  # compliance
  "compliance",                                 # skipping for now because of dbGetInfo()

  NULL
))

# Only read_only and interface compliance test run here
# (opt-in not yet implemented, rstats-db/DBItest#33)
DBItest::test_compliance(
  ctx = DBItest::make_context(
    SQLite(), list(flags = SQLITE_RO), set_as_default = FALSE, name = "RSQLite-RO"),
  skip = c(
    "compliance",                               # skipping for now because of dbGetInfo()
    "ellipsis"                                  # redundant
  )
)
