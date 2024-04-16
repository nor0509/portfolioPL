# Project 1
## PowerBI Poland Housing Prices Interactive Dashboard

### Summary and results:

This was my first project created in Power BI, which I completed to learn more about Power Query and creating dashboards. The idea was to explore data about housing prices in Poland that I found on Kaggle, and also to practice creating a star schema from a not-so-clean dataset. I've learned a lot about modeling despite the simplicity of the model because working with real data is entirely different from working with a test database of fictional companies in SQL. 
I plan to expand this project in the near future by adding a second fact table that will contain apartment rental offers. 

The project proceeded as follows:

1. Profiling and cleaning the data: I began by transforming data types and removing variables that were not planned to be utilized during the analysis.

2. Creating the fact table and dimensions to establish a Star Schema for better optimization.

3. Creating the dashboard: The dashboard includes an overall summary and more specific insights involving the influence of room count and building type on the quantity and price of houses. The dashboard is interactive, allowing end-users to aggregate the charts.

The final result can be seen below.

(Due to changes in Microsoft's policies regarding Azure and the restriction on publishing to the web using my university email, which is required to log in to Power BI services, I am unable to provide the interactive dashboard in the typical manner seen in many other data analysts' portfolios. However, to demonstrate the dashboard's capabilities, I will provide a video presentation.) 


![DashboardGIF](https://github.com/nor0509/portfolio/assets/167141010/bf3557cd-3753-4054-bcc4-cad60230aecf)


![image](https://github.com/nor0509/portfolio/assets/167141010/3612e167-84cd-4997-91e4-479537b26055)
![image](https://github.com/nor0509/portfolio/assets/167141010/d519a655-353b-4014-b2cf-ac20225ee5bc)
![image](https://github.com/nor0509/portfolio/assets/167141010/37e16ace-f72e-4740-a57a-9749674e8902)

Star Schema model:

![image](https://github.com/nor0509/portfolio/assets/167141010/945e06e5-c05c-444a-8697-73572cc5bfa1)

The model consists of a normalized fact table representing scrapped apartment offers and three dimension tables related to City, Date, and Type.All of them maintain a one-to-many relationship.

## Process documentaion

### Profiling, cleansing and creating the model

The first step I took was data profiling to assess which variables may not be suitable for further analysis. To do this, I utilized the data profiling functions in PowerBI. I discovered that the highest number of missing values were found in the variables "buildingMaterial" and "condition", so I excluded them from further analysis.

![image](https://github.com/nor0509/portfolio/assets/167141010/136f4469-cc3e-447f-a20b-04e473c4b461)

After that, I filtered out all rows containing empty values to ensure they don't affect the analysis results. 
I removed columns that I won't be using for further analysis and replaced long alphanumeric IDs with an index column. 
From the file name, I extracted the date using a limiter between limiters, and then replaced "_" with "-" using the 
"replace values" function. Afterward, I converted the type to date.
Before:
![image](https://github.com/nor0509/portfolio/assets/167141010/a83e5b77-16d9-42be-8df1-6c9e4a2dacd4)
After:
![image](https://github.com/nor0509/portfolio/assets/167141010/ef5d2256-c832-4c21-9789-3ca7bfde37a4)

From the prepared table, dimensions were created:
1. DimBuilding
2. DimDate
3. DimCity
   
This was achieved by duplicating the table, limiting the columns to those present in the dimension, removing duplicates, and adding indexes. For the Date dimension, it was expanded to include the exact year and month. Then, merging was performed based on names with the fact table, removing names and leaving indexes.

Fact table:
![image](https://github.com/nor0509/portfolio/assets/167141010/d802cbab-b4c7-494e-ab39-71105b9f0132)

DimDate:
![image](https://github.com/nor0509/portfolio/assets/167141010/e1d23efc-f7b5-4a12-9bdf-82a20ca67f89)

DimType:
![image](https://github.com/nor0509/portfolio/assets/167141010/73d0306a-44c4-4b24-90b0-453690f98354)

DimCity:
![image](https://github.com/nor0509/portfolio/assets/167141010/80b690e1-10af-4636-b941-f2df660f8b28)
