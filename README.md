# Case-study-ai-agent

This project is an AI-powered system that ingests business case studies, extracts summaries and strategic analysis (e.g., SWOT), and stores the results in a structured data warehouse. It leverages DeepSeek R1 (via Together.ai), Firecrawl, Amazon SageMaker, n8n, and a Streamlit-based UI for end-to-end processing.


### 🔧 **System Overview: AI Agent for Case Study Analysis**

---

### 1. **Core Objectives**

* Ingest and parse case study documents (PDF, DOCX, etc.)
* Use RAG (Retrieval-Augmented Generation) to generate bullet-point summaries
* Analyze the case (e.g., SWOT, root cause, recommendations)
* Store structured data using star or snowflake schema for mining
* Use Amazon SageMaker to train or fine-tune custom analysis models

---

### 2. **Tech Stack & Tools**

| Component                           | Tool/Service                                             |
| ----------------------------------- | -------------------------------------------------------- |
| Web crawling & ingestion            | **Firecrawl**                                            |
| LLM-based reasoning & summarization | **DeepSeek R1 0528 via Together.ai**                     |
| Workflow orchestration              | **n8n**                                                  |
| Vector-based RAG                    | **n8n + Firecrawl + custom Pinecone/Weaviate or Qdrant** |
| Model building & inference          | **Amazon SageMaker**                                     |
| Data warehouse                      | **Snowflake / Redshift (star/snowflake schema)**         |
| Data mining & analytics             | **Python (Pandas, Scikit-learn, SageMaker Studio)**      |

---

### 3. **System Workflow**

#### Document Ingestion

* Firecrawl extracts textual content from URLs or uploaded case studies.
* n8n triggers parsing flow when a new document is uploaded.

#### Preprocessing

* Clean and split text into logical segments (e.g., by heading).
* Store text in vector DB using embeddings from DeepSeek (via Together.ai).

#### RAG + Summary & Analysis

* Use RAG with DeepSeek R1 to:

  * Generate bullet point summaries per section
  * Identify key stakeholders, issues, and decisions
  * Run SWOT analysis or financial/strategic evaluation

#### Store Extracted Info in Data Warehouse

* Model a **star schema**:

  * **Fact Table**: case insights (issues, stakeholders, decisions)
  * **Dimension Tables**: case metadata, category, timeline, region
* Or use a **snowflake schema** for normalized data (linked dimensions)

#### Data Mining

* Run frequent pattern mining, association rules, clustering:

  * Example: Which case types most often involve a pricing strategy issue?
  * Use SageMaker notebooks or Jupyter within Studio

#### Model Training 

* SageMaker trains:

  * Text classification (case type, complexity)
  * Sentiment classification of decisions
  * Forecasting outcomes (success/failure likelihood)

---


###  **Deployment & Scaling Tips**

* Use **SageMaker Pipelines** for model retraining
* Set up **auto-scaling** for Together.ai inference with GPU-backed LLM endpoints
* Schedule **ETL flows** into Snowflake with dbt or AWS Glue
* Visualize outputs with **Amazon QuickSight or Streamlit dashboards**
* The case involves a large FMCG firm losing market share in Asia.
* Pricing strategy conflicts led to regional manager turnover.
* Inventory misalignment caused delayed product launches.

🔍 **Analysis**
- 🟢 Strength: Strong distribution network
- 🔴 Weakness: Poor price localization
- ⚠️ Threat: Emerging local brands
- 💡 Opportunity: Partnership with regional influencers

📊 **Stored Facts**
- Type: Strategic Marketing
- Region: APAC
- Complexity: High
- Outcome: Turnaround with price localization

  ---

## 🚀 Features
- Upload case studies (TXT, PDF via extension)
- Automatic bullet-point summary & SWOT/analysis using DeepSeek R1-0528
- Embeddings + RAG-based QA via Together.ai
- Stores structured data in Snowflake with a star/snowflake schema
- Triggers SageMaker notebooks for data mining and modeling
- Streamlit frontend for easy interaction

