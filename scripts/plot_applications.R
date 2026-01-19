# Project for Google Data Analytics, Course 2, Module 3, Scope Of Work

library(tidyverse)
applications <- read_csv("data/applications_summary.csv")
ggplot(applications, aes(x = app_month, y = num_apps)) +
  geom_line() +
  geom_point() +
  scale_x_continuous(breaks = seq(1, 12, by = 1)) +
  labs(
    title = "Job Applications by Month",
    x = "Month",
    y = "Applications per Month"
  )
