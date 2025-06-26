# Google A2A Protocol Multi-Agent System

This repository implements a modular, configuration-driven multi-agent system using the Google A2A Protocol. It features specialized agents for research, writing, editing, and orchestration, all powered by Google Gemini (Generative AI) and FastAPI.

## Features
- **Research Agent**: Conducts comprehensive research and trend analysis.
- **Writer Agent**: Generates professional articles and marketing copy.
- **Editor Agent**: Provides editorial review and content improvement.
- **Orchestration Agent**: Routes and manages workflows between agents.
- **Interactive Client**: Command-line interface for end-to-end workflow execution.
- **Configuration-Driven**: All agent settings are loaded from `config.json` files (no hardcoding).
- **Clear Logging**: All agents and orchestrator print informative logs with emojis for easy tracking.

---

## Prerequisites
- Python 3.8+
- [Google Gemini API Key](https://ai.google.dev/)
- All dependencies in `requirements.txt`

---

## Setup
1. **Clone the repository**
2. **Install dependencies**
   ```sh
   pip install -r requirements.txt
   ```
3. **Set up your environment**
   - Create a `.env` file in the root directory:
     ```env
     GOOGLE_API_KEY=your_google_gemini_api_key_here
     ```
4. **Configure agent settings**
   - Edit the `config.json` files in each agent's folder to customize agent details and endpoints.

---

## How to Run (5 Steps)
Start each agent and the orchestrator in separate terminals, then launch the client:

```sh
python -m Research_Agent.Research
python -m Editor_Agent.Editor
python -m Writer_Agent.Writer
python -m Orchestration_Agent.orchestrator_a2a
python app.py
```

---

## Start All Agents at Once

You can use the provided scripts to start all agents and the client automatically:

- **Windows:**
  ```bat
  start_all_agents.bat
  ```
- **Linux/macOS:**
  ```sh
  bash start_all_agents.sh
  ```

Each agent will open in a new terminal window with 🟢 (started) or 🔴 (failed) status. The client will start after all agents are running.

---

## Usage
- Interact with the system via the CLI (`python app.py`).
- Example commands:
  - `research artificial intelligence trends`
  - `write article about quantum computing`
  - `edit: Please proofread this text...`
  - `status` (check agent health)
  - `help` (show usage examples)
  - `quit` (exit)

---

## Logging & Comments
- All agents and the orchestrator print startup logs with emojis (e.g., agent name, endpoint, config loaded).
- Key workflow steps and errors are logged for transparency.
- Each Python file is commented for clarity and maintainability.

---

## Project Structure
```
app.py
requirements.txt
README.md
Agent_Framework/
  google_a2a.py
Editor_Agent/
  Editor.py
  config.json
Orchestration_Agent/
  orchestrator_a2a.py
  config.json
Research_Agent/
  Research.py
  config.json
Writer_Agent/
  Writer.py
  config.json
```

---

## Notes
- Ensure all agents are running before starting the client (`app.py`).
- Update endpoints in each `config.json` if you change ports or hostnames.
- For troubleshooting, check the logs printed by each agent and the orchestrator.

---

Enjoy your modular, multi-agent Google A2A Protocol system! 🚀

