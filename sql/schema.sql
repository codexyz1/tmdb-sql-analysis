-- schema.sql
-- TMDB 5000 Movie Dataset — staging tables (raw CSV structure)

USE TMDB;
GO

-- Drop tables if re-running this script
IF OBJECT_ID('dbo.movies', 'U') IS NOT NULL DROP TABLE dbo.movies;
IF OBJECT_ID('dbo.credits', 'U') IS NOT NULL DROP TABLE dbo.credits;
GO

CREATE TABLE dbo.movies (
    id                      INT PRIMARY KEY,
    title                   NVARCHAR(255),
    budget                  BIGINT,
    revenue                 BIGINT,
    release_date            DATE,
    runtime                 INT,
    original_language       NVARCHAR(10),
    original_title          NVARCHAR(255),
    overview                NVARCHAR(MAX),
    tagline                 NVARCHAR(500),
    status                  NVARCHAR(50),
    popularity              FLOAT,
    vote_average            FLOAT,
    vote_count              INT,
    homepage                NVARCHAR(500),
    genres                  NVARCHAR(MAX),         -- raw JSON string, flattened later
    keywords                NVARCHAR(MAX),         -- raw JSON string
    production_companies    NVARCHAR(MAX),         -- raw JSON string
    production_countries    NVARCHAR(MAX),         -- raw JSON string
    spoken_languages         NVARCHAR(MAX)          -- raw JSON string
);
GO

CREATE TABLE dbo.credits (
    movie_id    INT PRIMARY KEY,
    title       NVARCHAR(255),
    cast        NVARCHAR(MAX),   -- raw JSON string, flattened later
    crew        NVARCHAR(MAX)    -- raw JSON string, flattened later
);
GO