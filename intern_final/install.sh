#!/bin/bash

cd /workspace


uv venv --seed .venv
source -y  .venv/bin/activate

cd /workspace/aiqtoolkit

uv sync --all-groups --all-extras --active
uv pip install -e '.[langchain]'
uv pip install -e examples/RAG/simple_rag

cd /workspace/aiqtoolkit/external/aiqtoolkit-opensource-ui
npm install
