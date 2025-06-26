#!/bin/bash
# start_all_agents.sh
# Shell script to start all agents and orchestrator, then the client, with colored logs and emojis

# Function to print status with color and emoji
echo_status() {
  if [ $2 -eq 0 ]; then
    echo -e "\e[32m🟢 $1 started successfully!\e[0m"
  else
    echo -e "\e[31m🔴 Failed to start $1!\e[0m"
  fi
}

# Start each agent in a new terminal (Linux/macOS)
(gnome-terminal -- bash -c "python -m Research_Agent.Research; exec bash" && echo_status "Research Agent" $?) &
(sleep 1; gnome-terminal -- bash -c "python -m Editor_Agent.Editor; exec bash" && echo_status "Editor Agent" $?) &
(sleep 2; gnome-terminal -- bash -c "python -m Writer_Agent.Writer; exec bash" && echo_status "Writer Agent" $?) &
(sleep 3; gnome-terminal -- bash -c "python -m Orchestration_Agent.orchestrator_a2a; exec bash" && echo_status "Orchestrator Agent" $?) &

# Wait a bit and then start the client in the current terminal
echo "Waiting for agents to start..."
sleep 5
echo -e "\e[34m🚀 Starting Google A2A Client...\e[0m"
streamlit run app.py
