CREATE TABLE DIM_CASE_METADATA (
    case_id VARCHAR PRIMARY KEY,
    title VARCHAR,
    region VARCHAR,
    category VARCHAR,
    upload_date TIMESTAMP
);

CREATE TABLE DIM_ANALYSIS_TYPE (
    analysis_id VARCHAR PRIMARY KEY,
    type VARCHAR,         -- e.g., SWOT, PESTEL, Recommendations
    analyst VARCHAR
);

CREATE TABLE FACT_CASE_INSIGHTS (
    fact_id VARCHAR PRIMARY KEY,
    case_id VARCHAR,
    analysis_id VARCHAR,
    summary TEXT,
    insights TEXT,
    FOREIGN KEY (case_id) REFERENCES DIM_CASE_METADATA(case_id),
    FOREIGN KEY (analysis_id) REFERENCES DIM_ANALYSIS_TYPE(analysis_id)
);
