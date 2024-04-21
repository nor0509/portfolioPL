
## Interaktywny Dashboard Sprzedażowy fikcyjnej firmy Adventure Works

### Podsumowanie i wyniki:

Głównym celem projektu było poszerzenie kompetencji w zakresie wykorzystania SQL oraz SQL Server, przy jednoczesnym pogłębianiu wiedzy na temat języka DAX oraz zasad skutecznego raportowania.

[Dane źródłowe](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms) 


Projekt przebiegał następująco:

1. Pobranie oraz załadowanie bazy danych firmy Adventure Works do SQL Server.

2. Utworzenie niezbędnych tabel (wymiarów oraz faktów) za pomocą widoków, agregacji oraz zmiennych. Załadowanie danych do PowerBi za pomocą funkcji SQL Server co w połączeniu z widokami pozwoliło wprowadzać korekty do kreacji modelu.
   
3. Utworzenie miar w języku DAX oraz wizualizowanie ich na dashboardzie starając się odpowiedź na możliwe pytania dotyczące rozwoju firmy w 2013 roku.
   
Poniżej znajduje się wynik prac:

Wideo:
![Untitled](https://github.com/nor0509/portfolioPL/assets/167141010/522207a8-2b68-46b5-b1be-d0a7ecfa7a06)



Slajdy:
![Slajd1 png](https://github.com/nor0509/portfolioPL/assets/167141010/2a34b67a-b3ba-4652-ba5c-9e6382150229)
![Slajd2](https://github.com/nor0509/portfolioPL/assets/167141010/41aa638b-81e1-4d0f-a783-b4cd308283dc)
![Slajd3](https://github.com/nor0509/portfolioPL/assets/167141010/d6726c0f-ea80-4487-b5bc-0ffbce4213d1)
![Slajd4](https://github.com/nor0509/portfolioPL/assets/167141010/8fc426b3-f7ae-4514-ad58-fd4b0ace39ad)






Model danych:

![image](https://github.com/nor0509/portfolioPL/assets/167141010/8f6df7c8-af5c-431b-984b-cb72559378f3)

Model składa się z dwóch tabel faktów (dotyczących sprzedaży oraz produkcji). 

Tabele wymiarów to:
- dimCustomer - Opisujący klienta (sklep) oraz jego pierwszą datę zamówienia.
- dimDate - Wymiar czasu.
- dimGeo - Wymiar geograficzny.
- dimOrderFlag - Wymiar utworzony w PowerBi do opisu zmiennej binarnej odpowiadającej za sposób zamówienia (Online lub przez sprzedawcę).
- dimProduct - Wymiar zawierający szczegółowy opis produktów.
- dimShipMethos - Wymiar zawierający nazwę przewoźników.

[Wykorzystane zapytania SQL](https://github.com/nor0509/portfolioPL/blob/main/projekty/projekt2/DimCreation.sql)
