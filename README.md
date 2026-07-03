# TMDB Movie Analysis - SQL Practice Project

SQL-focused exploratory analysis on the TMDB 5000 Movie Dataset from Kaggle,
covering joins, JSON flattening, and aggregate queries to explore genre performance,
director rankings, and profitability trends.

---

## Dataset
- **Source:** [TMDB 5000 Movie Dataset - Kaggle](https://www.kaggle.com/datasets/tmdb/tmdb-movie-metadata)
- **Size:** ~4,800 movies | 2 files (movies metadata + credits)
- `tmdb_5000_movies.csv` — budget, revenue, genres, ratings, release dates
- `tmdb_5000_credits.csv` — cast and crew per movie

---

## Questions Explored
1. What are the top 10 highest-grossing genres?
2. Which directors have the highest average rating (min. 3 films)?
3. Which actors appear together most frequently?
4. What are the most profitable movies (revenue − budget), excluding missing data?
5. How has average movie budget/revenue changed over time?

---

## Key Findings
- The **Animation** genre generates the highest average revenue despite not having the most releases
- budgets have risen sharply since **1969**
- The Top Director by Average Rating was **Hayao Miyazaki**
- The actor pairs who have appeared together most frequently together were **Adam Sandler & Allen Covert**
- **Avatar** was the most profitable movie

---

## SQL Concepts Practiced
- Multi-table joins (`movies` ⨝ `credits`)
- Parsing/flattening JSON columns (genres, cast, crew) into relational tables
- Aggregate functions (`AVG`, `COUNT`) with `GROUP BY` / `HAVING`
- Self-joins (actor collaboration pairs via `cast_members` joined to itself)
- Row limiting with `TOP N`
- Handling dirty data (excluding zero/near-zero budget and revenue values, filtering out low-sample outlier years)

---

## Visuals
![Top Genres by Revenue](visuals/top_genres_revenue.png)
![Top Directors by Rating](visuals/top_directors.png)
![Most Profitable Movies](visuals/top_profitable_movies.png)
![Budget-Revenue Trend](visuals/budget_revenue_trend.png)
![Most Frequent Actor Pairs](most_actor_collaborations.png)

---

## How to Run
1. Install SQL Server 2025 Express (or any local SQL Server instance) and SSMS

2. Clone the repo
   git clone https://github.com/codexyz1/tmdb-sql-analysis.git

3. Install dependencies
   pip install -r requirements.txt

4. Update the connection string in the notebooks to match your server instance
   (default assumes localhost\SQLEXPRESS with Windows Authentication)

5. Run the notebooks in order:
   - notebooks/setup_load_data.ipynb       (loads CSVs into SQL Server)
   - notebooks/clean_flatten_json.ipynb    (flattens genres/cast/crew JSON columns)
   - notebooks/analysis_queries.ipynb      (runs SQL queries + generates charts)

6. Individual queries are also available to run directly in SSMS:
   sql/queries/*.sql

---

## Tools Used
- SQLite
- Python 3.13
- Pandas
- Matplotlib
- Jupyter Notebook

---

## About Me
Hi, I'm Abdalla — a Computer Science student at UAEU interested in Data Analysis and AI integration.

- 🔗 [LinkedIn](https://www.linkedin.com/in/abdalla-al-awadhi-53338a221/)
- 🐙 [GitHub](https://github.com/codexyz1)