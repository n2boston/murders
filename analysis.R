library(tidyverse)
load("rda/murders.rda")

murders %>% mutate(abb = reorder(abb, rate)) %>%
  ggplot(aes(abb, rate)) +
  geom_bar(stat = 'identity', width = 0.5) +
  coord_flip() +
  
ggsave("figs/barplot.png")

