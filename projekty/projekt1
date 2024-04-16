# Projekt 1
## Interaktywny Dashboard Cen Mieszkań w Polsce w PowerBI

### Podsumowanie i wyniki:

To był mój pierwszy samodzielny projekt stworzony w Power BI, który ukończyłem, aby dowiedzieć się więcej 
o Power Query i tworzeniu dashboardów. Celem było zbadanie danych (znalezionych na Kaggle) dotyczących cen 
mieszkań w Polsce oraz praktyka tworzenia schematu gwiazdy ze zbioru, który trzeba uporządkować. 

Bardzo wiele się nauczyłem o modelowaniu danych, pomimo prostoty modelu. Praca z surowymi danymi jest 
zupełnie inna niż praca z bazą danych fikcyjnych firm w SQL.

Planuję rozszerzyć ten projekt w niedalekiej przyszłości poprzez dodanie drugiej tabeli 
faktów zawierającej oferty wynajmu mieszkań.

Projekt przebiegał następująco:

1. Profilowanie i czyszczenie danych: Rozpocząłem od transformacji typów danych i usuwania zmiennych,
   które nie miały być wykorzystywane podczas analizy.

2. Tworzenie tabeli faktów i wymiarów w celu ustanowienia schematu gwiazdy dla lepszej optymalizacji.
   
3. Tworzenie dashboardu: Dashboard obejmuje ogólne podsumowanie oraz bardziej konkretne wnioski
   dotyczące liczby pokoi i typu budynku na ilość i cenę domów. Dashboard jest interaktywny,
   pozwalając końcowym użytkownikom agregować wykresy.
   
Poniżej znajduje się wynik prac.

(Z powodu zmian w polityce Microsoft dotyczącej Azure i oraz zablokowania możliwości publikowania 
w internecie dashboardów w serwisie PowerBI za pomocą mojego uczelnianego adresu e-mail,
nie mogę udostępnić interaktywnego dashboardu w typowym stylu widocznym w wielu innych portfolio 
analityków danych. Jednakże, aby zademonstrować możliwości dashboardu, postanowiłem zamieścić gif
prezentujący jego działanie).

![DashboardGIF](https://github.com/nor0509/portfolio/assets/167141010/4f9eb8a0-37a2-4960-9c4b-bad70cab3d8d)


![image](https://github.com/nor0509/portfolio/assets/167141010/3612e167-84cd-4997-91e4-479537b26055)
![image](https://github.com/nor0509/portfolio/assets/167141010/d519a655-353b-4014-b2cf-ac20225ee5bc)
![image](https://github.com/nor0509/portfolio/assets/167141010/37e16ace-f72e-4740-a57a-9749674e8902)

Model schematu gwiazdy:

![image](https://github.com/nor0509/portfolio/assets/167141010/945e06e5-c05c-444a-8697-73572cc5bfa1)

Model składa się ze znormalizowanej tabeli faktów reprezentującej oferty mieszkań oraz trzech tabel 
wymiarów związanych z Miastem, Datą i Typem. Wszystkie one utrzymują relację jeden do wielu.

## Dokumentacja procesu

### Profilowanie, oczyszczanie i tworzenie modelu

Pierwszym krokiem, który podjąłem, było profilowanie danych w celu oceny, 
które zmienne mogą nie nadawać się do dalszej analizy. W tym celu skorzystałem z funkcji profilowania 
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
