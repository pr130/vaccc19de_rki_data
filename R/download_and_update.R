library(readr)
library(vaccc19de)

# download
xlsx_path <- rki_download_xlsx("data/raw")

# store raw data
rki_extract_sheet_csvs(xlsx_path, "data/raw")

# extract
rki_data <- rki_extract_cumulative_data(xlsx_path)

# update time series
# read in existing data
cumulative <- readr::read_csv("data/cumulative_time_series.csv")

# check whether the new Datenstand is already in the time series data
if (unique(rki_data$ts_datenstand) == max(cumulative$ts_datenstand)) {
  # no new data
  print(glue::glue("No new data. Skipping update."))
  quit(status = 0, save = "no")
}

# append
cumulative <- cumulative %>%
  dplyr::bind_rows(rki_data)

cumulative %>% readr::write_csv("data/cumulative_time_series.csv")
