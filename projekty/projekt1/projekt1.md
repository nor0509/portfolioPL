
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


[Slajd1](https://github.com/nor0509/portfolioPL/assets/167141010/a00b9319-369b-4f6d-b108-1714ff80cdab)

![Slajd2](https://github.com/nor0509/portfolioPL/assets/167141010/109afabb-d2a8-4142-93d7-3e1d31d81b37)

![Slajd3](https://github.com/nor0509/portfolioPL/assets/167141010/842098c5-0489-4edb-8420-c04ea24bf8a5)


Model schematu gwiazdy:

![image](https://github.com/nor0509/portfolio/assets/167141010/945e06e5-c05c-444a-8697-73572cc5bfa1)

Model składa się ze znormalizowanej tabeli faktów reprezentującej oferty mieszkań oraz trzech tabel 
wymiarów związanych z Miastem, Datą i Typem. Wszystkie one utrzymują relację jeden do wielu.

[Proces przygotowania danych](https://github.com/nor0509/portfolioPL/blob/main/projekty/projekt1/dokumentacja.md)
