
## Interaktywny Dashboard Sprzedażowy fikcyjnej firmy Adventure Works

### Podsumowanie i wyniki:

Głównym celem projektu było poszerzenie kompetencji w zakresie wykorzystania T-SQL oraz SQL Server, przy jednoczesnym pogłębianiu wiedzy na temat języka DAX oraz zasad skutecznego raportowania.

[Dane źródłowe]([https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms) 


Projekt przebiegał następująco:

1. Pobranie oraz załadowanie bazy danych firmy Adventure Works do SQL Server.

2. Utworzenie niezbędnych tabel (wymiarów oraz faktów) za pomocą widoków, agregacji oraz zmiennych. Załadowanie danych do PowerBi za pomocą funkcji SQL Server co w połączeniu z widokami pozwoliło wprowadzać korekty do kreacji modelu.
   
3. Utworzenie miar w języku DAX oraz wizualizowanie ich na dashboardzie starając się odpowiedź na możliwe pytania dotyczące rozwoju firmy w 2013 roku.
   
Poniżej znajduje się wynik prac:

![DashboardGIF]()


![image]()
![image]()
![image]()
![image]()

Model danych:

![image](![image](https://github.com/nor0509/portfolioPL/assets/167141010/771be749-1d9d-4c51-bb75-7137dbb8ff74))

Model składa się z dwóch tabel faktów (dotyczących sprzedaży oraz produckji). 

Tabele wymiarów to:
- dimCustomer - Opisujący klienta (sklep) oraz jego pierwszą datę zamówienia.
- dimDate - Wymiar czasu.
- dimGeo - Wymiar geograficzny.
- dimOrderFlag - Wymiar utworzony w PowerBi do opisu zmiennej binarnej odpowiadającej za sposób zamówienia (Online lub przez sprzedawcę).
- dimProduct - Wymiar zawierający szczegółowy opis produktów.
- dimShipMethos - Wymiar zawierający nazwę przewoźników.

[Wykorzystane zapytania SQL]()


[Pobierz projekt w formacie .pbix]()
