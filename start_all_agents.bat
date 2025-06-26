@echo off
REM start_all_agents.bat
REM Batch script to start all agents and orchestrator, then the client, with colored logs and emojis

REM Function to print status (emojis only, as Windows CMD has limited color support)

start "Research Agent" cmd /k "echo 🟢 Starting Research Agent... && python -m Research_Agent.Research"
start "Editor Agent" cmd /k "echo 🟢 Starting Editor Agent... && python -m Editor_Agent.Editor"
start "Writer Agent" cmd /k "echo 🟢 Starting Writer Agent... && python -m Writer_Agent.Writer"
start "Orchestrator Agent" cmd /k "echo 🟢 Starting Orchestrator Agent... && python -m Orchestration_Agent.orchestrator_a2a"

REM Wait for agents to start
ping 127.0.0.1 -n 6 > nul

echo 🚀 Starting Google A2A Client...
streamlit run app.py
