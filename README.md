# vaccc19de_rki_data

Collects data on the progress of COVID-19 vaccinations in Germany. Data is published by the RKI on [this page](https://www.rki.de/DE/Content/InfAZ/N/Neuartiges_Coronavirus/Daten/Impfquotenmonitoring.html). 

The data is collected via GitHub action which uses the accompanying [{vaccc19de} R :package:](https://github.com/friep/vaccc19de). You can find the raw data (xlsx files and sheets as csvs) in `data/raw` and the time series at `data/cumulative_time_series.csv`.   