Movies Dataset Analysis using SQL

Objective: This project aims to analyse movie data using SQL.
The project aims to analyse various aspects like actor and director performance, genre popularity, movie ratings, and viewer engagement, by organising data into relational tables and performing powerful queries.
It helps in understanding industry trends, optimising movie offerings, and making better production and marketing decisions based on data-driven insights.
Database Design
• Name of Database: movies_db
• Table Created I: movies
o Columns: movie_id, movie_title, genre, actor, director, rating, duration, watched, time_watched
• Table Created II: actors
o Columns: actor_id, actor_name, nationality
• Table Created III: directors
o Columns: director_id, director_name, awards_won

SQL Queries Implemented
• Table Creation:
Defined primary keys for all three tables (movie_id, actor_id, and director_id) to ensure unique identification of each record.
• Data Insertion:
Populated the movies, actors, and directors tables with real-world movie, actor, and director data.
• Data Retrieval:
Used SELECT queries to fetch records, calculate highest and lowest rated movies, analyse genre popularity, actor appearances, and director achievements.
• Joins & Relationships:
Connected movies with actors and directors through actor names and director names to enable meaningful analysis across tables.

Implementation and Testing
• Imported and structured the database schema based on movie industry data.
• Performed data cleaning by updating actor names and correcting genre inconsistencies.
• Ensured smooth join operations between movies, actors, and directors tables.
• Tested query performance by retrieving top-rated movies, analysing genre patterns, and evaluating actor/director impacts on ratings.

Final Outcome

The structured SQL database improves data accessibility, ensures accurate industry analysis, and supports strategic decision-making for movie production and marketing.
The implementation enhances the ability to track viewer preferences, maximise box office potential, and plan future projects and collaborations based on real insights.

Findings/Key Insights
1.	The highest-rated movies were The Dark Knight and Inception, both highly acclaimed by audiences.
2.	The most popular genres were Action and Sci-Fi, showing a clear trend towards fast-paced and imaginative storytelling.
3.	Christopher Nolan emerged as the director with the most highly rated movies, showcasing his strong influence in the industry.
4.	Movies in the Horror/Action genre had comparatively lower ratings, suggesting the need for creative improvements or better marketing strategies.
5.	Movies with durations between 120–150 minutes performed better, suggesting that audiences prefer well-paced but substantial storytelling formats.
Movie studios should focus on producing more Action and Sci-Fi movies, and prioritise collaborations with highly successful directors. Additionally, genres that underperform should be re-evaluated for creative or marketing enhancements.

