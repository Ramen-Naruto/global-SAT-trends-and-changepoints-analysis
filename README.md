# global-SAT-trends-and-changepoints-analysis
Code for analyzing global surface air temperature records from satellite, reanalysis, and in-situ datasets using multiple linear regression and kernel changepoint detection.

## Data Availability
The monthly datasets analyzed in this study include:
*   **MERRA-2** surface air temperature: [10.5067/AP1B0BA5PD2K](https://doi.org/10.5067/AP1B0BA5PD2K)
*   **ERA5** surface air temperature: [10.24381/cds.f17050d7](https://doi.org/10.24381/cds.f17050d7)
*   **JRA-55** surface air temperature: [10.5065/D60G3H5B](https://doi.org/10.5065/D60G3H5B)
*   **JRA-3Q** surface air temperature: [10.5065/PH0D-MH18](https://doi.org/10.5065/PH0D-MH18)
*   **AIRSv7** surface air and skin temperature: [10.5067/UBENJB9D3T2H](https://doi.org/10.5067/UBENJB9D3T2H)
*   **CLIMCAPS-Aqua** surface air temperature: [10.5067/ZPZ430KOPMIX](https://doi.org/10.5067/ZPZ430KOPMIX)
*   **GISTEMPv4** gridded and global mean SAT anomaly: [Data Page](https://data.giss.nasa.gov/gistemp/)
*   **Berkeley Earth** surface air temperature: [Data Page](https://berkeleyearth.org/data/)

GISTEMPv4, Berkeley Earth, and the required subset of ERA5 can be downloaded directly from their respective websites. Meanwhile, MERRA-2, AIRSv7, CLIMCAPS-Aqua, JRA-55, and JRA-3Q can only be subsetted using GESDISC or OpenDaP using the exact dataset and variable names specified in Table 1. 

Once subset links are obtained, they can be downloaded via the Unix/Batch scripts located in the `Downloading` folder, where examples for downloading an AIRSv7 (`GESDISCdownloader.csh`) and JRA-55 (`JRAdownloader.bat`) subset are provided.

All climate modes used in the multiple linear regressions can be found in the `Fitting Components` folder or obtained from the following websites:
*   [NOAA PSL Climate Indices](https://psl.noaa.gov/data/climateindices/list/) for the AAO, NAO, QBO, PNA, BEST, PDO, 10.7 cm Solar Flux, and AMO.
*   [NOAA PSL DMI](https://psl.noaa.gov/data/timeseries/month/DMI/) for the Indian Ocean Dipole (IOD / DMI).
*   [10.5067/GLOSSAC-L3-V2.23](https://doi.org/10.5067/GLOSSAC-L3-V2.23) for GloSSAC. We take the SAOD at 525 nm and average it over the global grid to obtain `global_saod.nc`.

## Software Availability

All data loading, analysis, and plotting use Python Jupyter notebooks found in the `Notebooks for Analysis and Plotting` folder. 
*   `Gridded_Analysis_and_Plotting.ipynb`: Loads the raw datasets, performs gridded OLS multiple linear regression, and averages over global and zonal extents.
*   `Mean_Time_series_Analysis_and_Plotting.ipynb`: Loads the mean time series data, performs the mean multiple linear regressions, and applies the kernel changepoint detection method.

Derived global and 60°N-60°S mean SAT anomaly time series can be found in the `Mean Time Series` folder. Note that we do not explicitly use the derived global mean anomaly for GISTEMPv4, and instead substitute it for the global mean anomaly dataset directly from the website, meaning that when loading in the global mean datasets for the mean time series analysis code, you must also run the subsequent GISTEMPv4 cell.
