
# vaccc19de\_rki\_data

Collects data on the progress of COVID-19 vaccinations in Germany. Data
is published by the RKI on [this
page](https://www.rki.de/DE/Content/InfAZ/N/Neuartiges_Coronavirus/Daten/Impfquotenmonitoring.html).

The data is collected via GitHub action which uses the accompanying
[{vaccc19de} R :package:](https://github.com/friep/vaccc19de). You can
find the raw data (xlsx files and sheets as csvs) in `data/raw` and the
time series at `data/cumulative_time_series.csv`.

# Data

## `data/cumulative_time_series.csv`

Read in directly from GitHub using R:

``` r
cumulative_ts <- readr::read_csv("https://raw.githubusercontent.com/friep/vaccc19de_rki_data/main/data/cumulative_time_series.csv")
```

| col                      | type      | description                                                                                                                      |
|:-------------------------|:----------|:---------------------------------------------------------------------------------------------------------------------------------|
| ts\_datenstand           | datetime  | datetime until which data is included (‘Datenstand’) as specified in the Excel file.                                             |
| ts\_download             | datetime  | datetime when data was downloaded from RKI website                                                                               |
| bundesland               | character | full name of Bundesland                                                                                                          |
| bundesland\_iso          | character | ISO 3166-2 of Bundesland                                                                                                         |
| impfungen\_kumulativ     | double    | Cumulative total number of vaccinations in the Bundesland                                                                        |
| differenz\_zum\_vortag   | double    | Difference to previous day (\~roughly corresponds to people vaccinated since then although delays in reporting could be the case |
| indikation\_nach\_alter  | double    | Total number of people vaccinated because of their age so far (cumulative)                                                       |
| berufliche\_indikation   | double    | Total number of people vaccinated because of their profession so far (cumulative)                                                |
| medizinische\_indikation | double    | Total number of people vaccinated because of medical reasons so far (cumulative)                                                 |
| pflegeheim\_bewohner\_in | double    | Total number of people in nursing homes so far (cumulative)                                                                      |

# Contribute
