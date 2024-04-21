
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

![Slajd1](https://github.com/nor0509/portfolioPL/assets/167141010/2a2fb7f2-ac73-48b2-b186-1697c6bd4663)
![Slajd2](https://github.com/nor0509/portfolioPL/assets/167141010/198536f1-a96b-4ac9-9512-4a1fc3147102)
![Slajd3](https://github.com/nor0509/portfolioPL/assets/167141010/1c29403a-8da7-4e8d-b658-1234f05163df)
![Slajd4](https://github.com/nor0509/portfolioPL/assets/167141010/ef9c03e2-d066-4a43-af92-095f8247d4bf)





Model danych:

![image](https://github.com/nor0509/portfolioPL/assets/167141010/8f6df7c8-af5c-431b-984b-cb72559378f3)

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
