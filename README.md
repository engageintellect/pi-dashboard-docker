# pi-dashboard-docker

![image](/pi-dashboard.png)

## Description

This project is a dockerized version of the [pi-dashboard](https://github.com/engageintellect/pi) project.

## Features

- Client dashboard
  - Server status
  - Server uptime
  - CPU usage
  - Memory usage
  - Disk usage
  - Open Ports
  - Running Processes
  - Available updates
- Server (Python [FastAPI](https://fastapi.tiangolo.com/))
  - API's for client dashboard
  - Websocket for real-time updates
- PB [Pocketbase](https://pocketbase.io)
  - Database for storing server data

## Getting Started

### Server

Copy `/app/server/.env.example` to `/app/server/.env` and fill in your values.

### Client

Copy `/app/client/.env.example` to `/app/client/.env` and fill in your values.

### Run docker container

```bash
docker compose up --build -d
```
