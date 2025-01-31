library(tidyverse)
library(dplyr)

#Naložimo vse datoteke z lastnostmi grafov
osem_vozlisc = read.csv('lastnosti_na_8_voz.csv')
devet_vozlisc = read.csv('lastnosti_na_9_voz.csv')
deset_vozlisc = read.csv('lastnosti_na_10_voz.csv')
enajst_vozlisc = read.csv('lastnosti_na_11_voz.csv')
dvanajst_vozlisc = read.csv('lastnosti_na_12_voz.csv')
trinajst_vozlisc = read.csv('lastnosti_na_13_voz.csv')
stirinajst_vozlisc = read.csv('lastnosti_na_14_voz.csv')
stoh_sest = read.csv("lastnosti_na_16_voz_stoh.csv")
stoh_osem = read.csv("lastnosti_na_18_voz_stoh.csv")
stoh_dvajst = read.csv("lastnosti_na_20_voz_stoh.csv")
stoh_dvadvajst = read.csv("lastnosti_na_22_voz_stoh.csv")
stoh_stiridvajst = read.csv("lastnosti_na_24_voz_stoh.csv")

dfs <- list(osem_vozlisc, devet_vozlisc,deset_vozlisc, enajst_vozlisc, dvanajst_vozlisc, trinajst_vozlisc, stirinajst_vozlisc,stoh_sest,stoh_osem, stoh_dvajst, stoh_dvadvajst, stoh_stiridvajst)

# Gremo čez vse tabele in jih analiziramo
for (i in 1:length(dfs)) {
  dfs[[i]] <- dfs[[i]] %>%
    mutate(dvodelnost = sum(Dvodelnost == 'True')) %>% 
    mutate(ravninski = sum( Ravninski == 'True')) %>% 
    mutate(gostota = mean(Gostota)) %>% 
    mutate(zgoscenost = mean(Zgoscenost)) %>% 
    mutate(razdalja = mean(Povp_razdalja)) %>% 
    mutate(premer = mean(Premer)) %>% 
    select(-c(Pakirno_st, Dvodelnost, Ravninski, St_povezav, Gostota, Zgoscenost,Povp_stopnja, Povp_razdalja, Najdaljsa_pot, Premer)) %>% # Rabimo samo novo narejene stolpce
    slice(1)  # Rabimo samo prvo vrstico

}

for (i in 1:length(dfs)) {
  print(i)
  print(dfs[[i]])
}








