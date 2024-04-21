### Profilowanie, oczyszczanie i tworzenie modelu

Pierwszym krokiem, który podjąłem, było profilowanie danych. Pozwoliło to ocenić, które zmienne mogą nie nadawać się do dalszej analizy. W tym celu skorzystałem z funkcji profilowania 
danych w Power BI. Odkryłem, że największa liczba brakujących wartości występuje w zmiennych 
"buildingMaterial" i "condition", więc wyłączyłem je z dalszej analizy.


![image](https://github.com/nor0509/portfolio/assets/167141010/136f4469-cc3e-447f-a20b-04e473c4b461)

Następnie, stosująć filtrowanie usunąłem wszystkie wiersze zawierające puste wartości, 
aby upewnić się, że nie wpłyną one na wyniki analizy. 
Usunąłem kolumny, których nie będę używał do dalszej analizy i zastąpiłem 
długie identyfikatory alfanumeryczne kolumną indeksu. Z nazwy pliku wydobyłem datę, 
korzystając z ograniczników, a następnie zastąpiłem "_" na "-", używając funkcji "replace values". 
Następnie przekonwertowałem typ na datę.

Przed:

![image](https://github.com/nor0509/portfolio/assets/167141010/a83e5b77-16d9-42be-8df1-6c9e4a2dacd4)

Po:

![image](https://github.com/nor0509/portfolio/assets/167141010/ef5d2256-c832-4c21-9789-3ca7bfde37a4)

Z przygotowanej tabeli stworzone zostały wymiary:
1. DimBuilding
2. DimDate
3. DimCity
   
Osiągnałem to poprzez zduplikowanie tabeli, ograniczenie kolumn do tych obecnych w wymiarze, 
usunięcie duplikatów i dodanie indeksów. Dla wymiaru Dat, dodałem kolumny, aby uwzględniał
dokładny rok i miesiąc. Następnie wykonałem scalenie na podstawie nazw z tabelą faktów, 
usuwając nazwy i pozostawiając ID.

Tabela faktów:
![image](https://github.com/nor0509/portfolio/assets/167141010/d802cbab-b4c7-494e-ab39-71105b9f0132)

DimDate:
![image](https://github.com/nor0509/portfolio/assets/167141010/e1d23efc-f7b5-4a12-9bdf-82a20ca67f89)

DimType:
![image](https://github.com/nor0509/portfolio/assets/167141010/73d0306a-44c4-4b24-90b0-453690f98354)

DimCity:
![image](https://github.com/nor0509/portfolio/assets/167141010/80b690e1-10af-4636-b941-f2df660f8b28)
