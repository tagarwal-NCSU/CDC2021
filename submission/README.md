## Code summary for CountyLevelRollup.Rmd

This bit of code recomputes the SVI at a county level by rolling up data at the tract level. 
We first begin by loading in the datasets and selecting the columns of interest from the SVI dataset. 
We roll up data appropriately depending on what type of data is provided to us for each individual metric within a given theme. 
For example, PCI data was recalculated by multiplying PCI by the population of the county census tract, summing this value for all census tracts within a county and redividing by the population to give the correct PCI. 
Conversely, the number of people without a high school diploma within a certain county was calculated by summing all the values for a given census tract within a county.

Additional adjustments are made to variables such as estimated percentage of people with no high school diploma, estimated number of trailer homes etc. 
When necessary, estimates collected from a national average if specific values could not be calculated exactly (for example, estimated percentage of people without a high school diploma in a given county rolled up from a census tract level).

Once this county level data has been calculated, the individual metrics within a theme were rank ordered  using percentiles. 
These percentiles for each metric were summed within a theme and re-rank ordered to give the percentile for that specific SVI theme. 
The percentiles for the four themes were then summed and re-rank ordered in order to give the final overall SVI score.

## Code summary for covid_data_posturing.Rmd

This code postures the historical data for covid infection, covid deaths and covid vaccines on a county level basis. 
We first begin by create "tidy dataframes" or tall dataframes where each observation is a unique value for deaths vaccines or infections for a given county, state and date. 
The date data is then cleaned and converted into a date format so that it can be appropriately visualized. 

The deaths, infections and vaccine data is then joined together on county, state and date to provide a concatenated dataframe.

## Code summary for FederalAidPosturing.Rmd

Code Summary:

This code joins the covid SVI dataframe and federal aid to north carolina data to allow visualization of federal aid provided to north carolina counties grouped by overall SVI and SVI themes.