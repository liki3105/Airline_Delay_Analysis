\# Airline Delay Analysis (2003–2022)



\## 🚀 Project Overview



This project explores \*\*U.S. domestic airline delay data\*\* spanning nearly two decades (2003–2022).  

Using \*\*Python (Pandas)\*\* for data cleaning and exploratory analysis (EDA) and \*\*PostgreSQL\*\* for aggregated SQL analysis, we uncover patterns and trends in airline and airport delays.  



The goal is to provide actionable insights for \*\*airline operations, airport management, and strategic planning\*\*, which can also be visualized in dashboards or reporting tools such as Power BI.



---



\## 🌟 Key Insights



1\. \*\*Airlines with Highest Delay Rates\*\*

&nbsp;  - Atlantic Southeast Airlines, JetBlue Airways, and Allegiant Air have the highest delay rates (~22–25%).  

&nbsp;  - Delay causes vary:

&nbsp;    - Carrier-related delays dominate Hawaiian Airlines (~63% of total delay minutes).

&nbsp;    - NAS/air traffic delays dominate Northwest Airlines (~45% of total delay minutes).

&nbsp;    - Late aircraft delays significant for SkyWest (~37% of total delay minutes).



2\. \*\*Airports with Most Impactful Delays\*\*

&nbsp;  - Smaller airports may show extreme delay rates due to low traffic (e.g., Youngstown-Warren, OH → 100%), while major hubs like Newark, NJ have both high average delay minutes (~66 min) and high traffic → highest operational impact.



3\. \*\*Seasonal Patterns\*\*

&nbsp;  - Summer sees the highest average delay rate (~22.7%) due to peak travel.  

&nbsp;  - Winter follows (~21.9%), likely impacted by weather.  

&nbsp;  - Spring and Fall have lower delays (~16–18%).



4\. \*\*Yearly Trends\*\*

&nbsp;  - Peak delay years: 2006–2007 (~25% avg delay rate).  

&nbsp;  - COVID-19 impact: 2020 unusually low (~9.6%) due to fewer flights.  

&nbsp;  - Post-pandemic (2021–2022) returning to pre-COVID levels (~17–21%).



---



\## 📂 Repository Structure



| Folder/File | Description |

|-------------|-------------|

| `Airline\_Delay\_Cause/Airline\_Delay\_Cause.csv` | \*\*Raw dataset\*\* downloaded from Kaggle with U.S. domestic airline delay statistics by carrier, airport, and month. |

| `Understanding Airline\_Delay\_Cause/Airline\_Delay\_Cause.docx` | Word document explaining the raw dataset in simple terms for non-technical viewers. |

| `data/Airline\_Delay\_Cleaned.csv` | Cleaned dataset used for \*\*Python EDA\*\*. Includes derived columns like `delay\_rate`, `avg\_delay\_per\_delayed\_flight`, and `season`. Null values partially handled. |

| `data/Airline\_Delay\_Production\_Ready.csv` | Fully cleaned and formatted dataset for \*\*SQL analysis\*\* and database import. All nulls handled, datatypes formatted, production-ready. |

| `data\_cleaning/` | Python notebook for step-by-step data cleaning of the raw CSV. |

| `EDA/` | Python notebook and Word explanation of exploratory data analysis: |

| \&nbsp;\&nbsp;`EDA.ipynb` | EDA in Python (Pandas \& Seaborn) including airline, airport, seasonal, and yearly trends. |

| \&nbsp;\&nbsp;`EDA\_Explained.docx` | Detailed explanation of EDA steps, plots, and insights. |

| `SQL\_Analysis/` | SQL scripts and explanations for aggregated analysis in PostgreSQL: |

| \&nbsp;\&nbsp;`SQL\_Analysis.sql` | SQL queries for airlines, airports, seasonal, and yearly delay patterns. |

| \&nbsp;\&nbsp;`SQL\_Analysis\_Explained.docx` | Detailed explanation of SQL analysis and derived insights. |

| `Database\_Table\_Create/` | SQL scripts for creating the production-ready database table. |

| \&nbsp;\&nbsp;`Airline\_Delay\_Production\_Ready.sql` | SQL table creation for cleaned dataset. |



---



\## 🛠️ Tools \& Technologies



\- \*\*Python (Pandas, Matplotlib, Seaborn)\*\* – Data cleaning, EDA, visualization  

\- \*\*PostgreSQL / PGAdmin\*\* – Aggregation queries and SQL-based analysis  

\- \*\*Jupyter Notebook\*\* – Interactive workflow and code documentation  

\- \*\*Word Documents\*\* – In-depth explanation of analysis steps for non-technical audiences  



---



\## 📝 Step-by-Step Workflow



1\. \*\*Understanding the Dataset\*\*

&nbsp;  - Dataset columns include: `year`, `month`, `carrier\_code`, `carrier\_name`, `airport\_code`, `airport\_name`, `total\_flights`, `delayed\_flights\_15min`, `carrier\_delay\_count`, `weather\_delay\_count`, `nas\_delay\_count`, `security\_delay\_count`, `late\_aircraft\_delay\_count`, `cancelled\_flights`, `diverted\_flights`, `total\_delay\_minutes`, `carrier\_delay\_minutes`, `weather\_delay\_minutes`, `nas\_delay\_minutes`, `security\_delay\_minutes`, `late\_aircraft\_delay\_minutes`, `date`, `delay\_rate`, `avg\_delay\_per\_delayed\_flight`, `season`, and delay percentages.



2\. \*\*Data Cleaning\*\*

&nbsp;  - Renamed columns for readability  

&nbsp;  - Handled missing/null values with meaningful replacements  

&nbsp;  - Added derived columns: `delay\_rate`, `avg\_delay\_per\_delayed\_flight`, `season`  



3\. \*\*Exploratory Data Analysis (Python)\*\*

&nbsp;  - Analyzed top airlines and airports by delay rate and average delay minutes  

&nbsp;  - Explored seasonal and yearly delay trends  

&nbsp;  - Visualized patterns using Seaborn and Matplotlib  



4\. \*\*SQL Analysis (PostgreSQL)\*\*

&nbsp;  - Aggregated data to calculate top airlines/airports, delay causes, seasonal patterns, and yearly trends  

&nbsp;  - Used production-ready CSV (`Airline\_Delay\_Production\_Ready.csv`) for reliable and formatted analysis  



5\. \*\*Insights \& Recommendations\*\*

&nbsp;  - Airlines: focus on reducing carrier-related and late aircraft delays  

&nbsp;  - Airports: prioritize hubs with high traffic and long average delay minutes  

&nbsp;  - Seasonal planning: optimize staffing and operations for Summer and Winter  



---



\## 📊 Visualizations



\- Airline delay rates and average delay minutes  

\- Airport delay rates and average delay minutes  

\- Seasonal delay patterns  

\- Yearly trends, including COVID-19 impact  



---

