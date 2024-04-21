
## Interaktywny Dashboard Cen Mieszkań w Polsce w PowerBI

### Podsumowanie i wyniki:

Samodzielny projekt stworzony w całości Power BI oraz PowerQuery, który ukończyłem, aby dowiedzieć się więcej 
o oprogramowaniu oraz zasadach tworzenia dashboardów. 

Celem było zbadanie danych dotyczących cen 
mieszkań w Polsce oraz praktyka tworzenia schematu gwiazdy ze zbioru, który trzeba uporządkować.

[Dane źródłowe](https://www.kaggle.com/code/cukierk/apartment-prices-in-poland-interactive-dashboard) 

Projekt ten rozwinął moje umiejętności dotyczące modelowania danych oraz zapoznał z interfejsem PowerBI oraz PowerQuery.

Planuję rozszerzyć ten projekt w niedalekiej przyszłości poprzez dodanie drugiej tabeli 
faktów zawierającej oferty wynajmu mieszkań.

Projekt przebiegał następująco:

1. Profilowanie i czyszczenie danych: Rozpocząłem od transformacji typów danych i usuwania zmiennych,
   które nie miały być wykorzystywane podczas analizy.

2. Tworzenie tabeli faktów i wymiarów w celu ustanowienia schematu gwiazdy dla lepszej optymalizacji.
   
3. Tworzenie dashboardu: Dashboard obejmuje ogólne podsumowanie oraz bardziej konkretne wnioski
   dotyczące liczby pokoi i typu budynku na ilość i cenę domów. Dashboard jest interaktywny,
   pozwalając końcowym użytkownikom agregować wykresy.
   
Poniżej znajduje się wynik prac:

![DashboardGIF](https://github.com/nor0509/portfolio/assets/167141010/4f9eb8a0-37a2-4960-9c4b-bad70cab3d8d)


![image](https://github.com/nor0509/portfolio/assets/167141010/3612e167-84cd-4997-91e4-479537b26055)
![image](https://github.com/nor0509/portfolio/assets/167141010/d519a655-353b-4014-b2cf-ac20225ee5bc)
![image](https://github.com/nor0509/portfolio/assets/167141010/37e16ace-f72e-4740-a57a-9749674e8902)

Model schematu gwiazdy:

![image](https://github.com/nor0509/portfolio/assets/167141010/945e06e5-c05c-444a-8697-73572cc5bfa1)

Model składa się ze znormalizowanej tabeli faktów reprezentującej oferty mieszkań oraz trzech tabel 
wymiarów związanych z Miastem, Datą i Typem. Wszystkie one utrzymują relację jeden do wielu.

[Proces przygotowania danych](https://github.com/nor0509/portfolioPL/blob/main/projekty/projekt1/dokumentacja.md)
