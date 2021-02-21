#----Merging various datasets using joins----
# Creating two data frame tables: df_primary & df_secondary
install.packages("dplyr")
library(dplyr)

df_primary <- tribble(
  ~ID, ~y,
  "A", 5,
  "B", 5,
  "C", 8,
  "D", 0,
  "F", 9)
df_secondary <- tribble(
  ~ID, ~y,
  "A", 30,
  "B", 21,
  "C", 22,
  "D", 25,
  "E", 29)

View(df_primary)

View(df_secondary)

# left join()
left_join(df_primary, df_secondary, by ='ID')

# right_join()
right_join(df_primary, df_secondary, by = 'ID')

# inner_join()
inner_join(df_primary, df_secondary, by ='ID')

# full_join()
full_join(df_primary, df_secondary, by = 'ID')