case-study-ai-agent/
│
├── app/
│   ├── ingestion/
│   │   ├── firecrawl_connector.py      # Pull case study content via Firecrawl
│   │   └── preprocessor.py             # Clean, chunk, and tokenize text
│   │
│   ├── embeddings/
│   │   └── embedder.py                 # Use Together.ai + DeepSeek for vector embeddings
│   │
│   ├── rag/
│   │   ├── retriever.py                # Pinecone / Qdrant-based retrieval
│   │   └── summarizer.py              # Generate bullet summaries & analysis via DeepSeek
│   │
│   ├── warehouse/
│   │   ├── schema_star.sql            # SQL schema for star model
│   │   ├── schema_snowflake.sql       # Normalized version
│   │   └── loader.py                  # Insert processed insights into Snowflake/Redshift
│   │
│   ├── mining/
│   │   ├── miner.py                   # SageMaker logic for clustering, rule mining
│   │   └── rank_predictor.py          # Predict success/impact using ML
│   │
│   └── utils/
│       └── config.py                  # API keys, SageMaker endpoints, etc.
│
├── sagemaker/
│   ├── notebooks/
│   │   ├── training_pipeline.ipynb    # Case classification model training
│   │   └── analysis_insights.ipynb    # SWOT/segment mining analysis
│   └── docker/
│       └── inference_container/       # Optional: custom inference image
│
├── workflows/
│   ├── n8n_workflow.json              # Importable n8n JSON workflow
│   └── pipeline_diagram.png           # Architecture visual
│
├── requirements.txt                   # Python dependencies
├── README.md
└── .env                               # Together.ai, Firecrawl, SageMaker, etc.
