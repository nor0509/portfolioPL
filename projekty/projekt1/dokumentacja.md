### Profilowanie, oczyszczanie i tworzenie modelu

Pierwszym krokiem, który podjąłem, było profilowanie danych. Pozwoliło to ocenić, które zmienne mogą nie nadawać się do dalszej analizy. W tym celu skorzystałem z funkcji profilowania 
danych w Power BI. Odkryłem, że największa liczba brakujących wartości występuje w zmiennych 
"buildingMaterial" i "condition", więc wyłączyłem je z dalszej analizy.


![image](https://github.com/nor0509/portfolioPL/assets/167141010/8e11ac67-b211-4206-a04a-e676b555a204)


Następnie, stosująć filtrowanie usunąłem wszystkie wiersze zawierające puste wartości, 
aby upewnić się, że nie wpłyną one na wyniki analizy. 
Usunąłem kolumny, których nie będę używał do dalszej analizy i zastąpiłem 
długie identyfikatory alfanumeryczne kolumną indeksu. Z nazwy pliku wydobyłem datę, 
korzystając z ograniczników, a następnie zastąpiłem "_" na "-", używając funkcji "replace values". 
Następnie przekonwertowałem typ na datę.

Przed:

![image](https://github.com/nor0509/portfolioPL/assets/167141010/57a1762a-4ebb-43c4-8886-6e0cc7606e70)


Po:

![image](https://github.com/nor0509/portfolioPL/assets/167141010/55b8bd45-c493-4ab6-afc3-db738d4e37b0)


Z przygotowanej tabeli stworzone zostały wymiary:
1. DimBuilding
2. DimDate
3. DimCity  

Tabela faktów:

![image](https://github.com/nor0509/portfolioPL/assets/167141010/8b828501-7449-4fbc-8b6b-6f21ae6679cc)



DimDate:

![image](https://github.com/nor0509/portfolioPL/assets/167141010/fe156fc4-957d-4cc5-89f4-d4f6333e461f)


DimType:

![image](https://github.com/nor0509/portfolioPL/assets/167141010/7fa56444-ed9e-4d7a-b82a-73b9c42aebe9)


DimCity:

![image](https://github.com/nor0509/portfolioPL/assets/167141010/13bd2cbd-a69b-4cfc-ae9b-2f2b53938cc4)

