# Faye Eventmachine Tail
Output your log file into browser as fast as possible using Faye.

## What for?
It's small application shows logs changing in real time through websocket.

## Quick Start
`cp .env.example .env` - copy example .env file
Replace LOG_FILE variable in .env file. And `foreman start`. That's it. Log changes will display on **http://localhost:3333** in real time.