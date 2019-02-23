library(hflights, dplyr)
hflights <- tbl(hflights)


# Use select() and a helper function to print out a tbl that contains just ArrDelay and DepDelay of hflights.
# Use a combination of helper functions and variable names to print out only the UniqueCarrier, FlightNum, TailNum, Cancelled, and CancellationCode columns of hflights.
# Find the most concise way to return the following columns with select and its helper functions: DepTime, ArrTime, ActualElapsedTime, AirTime, ArrDelay, DepDelay. Use only helper functions!

  
# As usual, hflights is pre-loaded as a tbl, together with the necessary libraries.

# Print out a tbl containing just ArrDelay and DepDelay
select(hflights, ends_with("Delay"))

# Print out a tbl as described in the second instruction, using both helper functions and variable names
select(hflights,UniqueCarrier, ends_with("Num"), starts_with("Cancel"))

# Print out a tbl as described in the third instruction, using only helper functions.
select(hflights, contains("Time"), contains("Delay"))