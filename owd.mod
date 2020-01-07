##################################################
# Zbiory
##################################################

# Surowce
set MATERIALS;

# Polprodukty
set INTERMEDIATES;

# Wyroby
set PRODUCTS;

# Koszyki ilosci dostaw
set SUPPLY_RANGES ordered;

# Koszyki ilosci produkcji
set PRODUCTION_RANGES ordered;

# Opcje transportu
set TRUCK_OPTIONS;

##################################################
# Parametry
##################################################

# Dostepnosc surowcow
param aviliability {MATERIALS} >= 0;
# Koszt zakupu surowcow
param materialsCost {MATERIALS, SUPPLY_RANGES} >=0;
# Progi ilosci surowcow
param materialsThreshold {MATERIALS, SUPPLY_RANGES} >= 0;
# Ładownosc ciezarowek
param truckCapacityS1 {TRUCK_OPTIONS} >= 0;
# Koszty ciezarowek
param truckCostS1 {TRUCK_OPTIONS} >= 0;
#maksymalna liczba wynajecia ciezarówek dla S1
param truckMax >= 0;
# Ładownosc ciezarowek
param truckCapacityS2 >= 0;
# Koszty ciezarowek
param truckCostS2 >= 0;
# Maksymalmna przepustowosc do produkcji D1 i D2
param capacityD >= 0;
# Ilosci polprodktow w zaleznosci od surowcow
param intermediateD {MATERIALS, INTERMEDIATES} >= 0;
# Koszt pracownika
param workerCost >= 0;
# Zaleznosc liczby pracownikow od ilosci produkcji W
param workersPerW >= 0;
# Koszty zakladu obrobki cieplnej - wyrob W1
param thermalCost {PRODUCTION_RANGES} >= 0;
# Progi produkcji W1
param thermalThreshold {PRODUCTION_RANGES} >= 0;
# Maksymalna ilosc surowca
param thermalMax >= 0;
# Cena sprzedazy wyrobow
param valueW {PRODUCTS} >= 0;
# Zobowiazania
param obligations {PRODUCTS} >= 0;

##################################################
# Zmienne
##################################################
