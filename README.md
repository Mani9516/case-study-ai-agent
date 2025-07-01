# case-study-ai-agent

This project is an AI-powered system that ingests business case studies, extracts summaries and strategic analysis (e.g., SWOT), and stores the results in a structured data warehouse. It leverages DeepSeek R1 (via Together.ai), Firecrawl, Amazon SageMaker, n8n, and a Streamlit-based UI for end-to-end processing.

---

## 🚀 Features
- Upload case studies (TXT, PDF via extension)
- Automatic bullet-point summary & SWOT/analysis using DeepSeek R1-0528
- Embeddings + RAG-based QA via Together.ai
- Stores structured data in Snowflake with a star/snowflake schema
- Triggers SageMaker notebooks for data mining and modeling
- Streamlit frontend for easy interaction
