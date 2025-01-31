# Pakirno število subdivizij subkubičnih grafov
Preveriti  želimo domnevo: za vsako subdivizijo subkubičnega grafa $G$ velja $\chi_\rho(S(G)) \leq 5$. Kjer je $S(G)$ subdivizija, ki jo dobimo iz G tako da subdividiramo vsako povezavo natanko enkrat. $\chi_\rho$ pa označuje pakirno število, to je najmanjše število $i$, da se lahko množico vozlišč grafa razdeli na disjunktne podmnožice $X_1, X_2, \dots, X_i$ ter da za vsaki vozlišči $u, v \in X_k$ velja $d_G(u, v) > k$ za $k \in \{1, 2, \dots, i\}$.

Tega se bomo lotili z iskanjem protiprimera, torej želimo poiskati subdivizijo subkubičnega grafa, ki ima pakirno kromatično število vsaj 6.

V mapi *koda* sta ipynb datoteki *brute_force* in *stohasticno*, sobj datoteke kjer so shranjeni grafi s pakirnimm številom 5, csv datoteke kjer so lastnosti teh grafov. 
V datoteki *brute_force* je koda, ki sva jo uporabila za generiranje vseh grafov do 14 vozlišč in preverjanje njihovega pakirnega števila.
V datoteki *stohasticno* je koda, ki sva jo uporabila za generiranje nakljucnih grafov na 16, 18, 20, 22, 24 vozliščih in preverjanje njihovega pakirnega števila. 

Python knjižnice, ki jih je potrebno imeti naložene so:
- multiprocessing
- csv
- pysat
