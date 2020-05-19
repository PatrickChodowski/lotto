library(tidyverse)


ldf = read_delim('wyniki-lotto.csv',delim=';')

### najczesciej wystepujace
lldf = ldf %>%
  gather(L1,L2,L3,L4,L5,L6)
colnames(lldf) <- c('numer','dzien','miesiac','rok','zmienna','wartosc')

aggr_df = lldf %>%
  mutate(n_losowan = nrow(.)) %>%
  group_by(wartosc,n_losowan) %>%
  summarise(n=n()) %>%
  ungroup %>%
  arrange(-n) %>%
  mutate(prct_losowan = n/n_losowan)





### repeated combinations?

lldf %>%
  



