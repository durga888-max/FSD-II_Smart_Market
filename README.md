# FSD-II Smart Market

A full-stack market analysis and trading dashboard built using React, TypeScript, Java Servlets, JDBC, and Oracle Database.

## Overview

**FSD-II Smart Market** is a web-based market analysis platform designed to provide users with an interface for exploring market information, analyzing stocks, monitoring price alerts, and maintaining trading journals.

The application combines a modern React frontend with a Java-based backend and Oracle Database for data management.

## Features

- **Market Dashboard:** Centralized market overview and dashboard.
- **Stock Screener:** Explore and filter stock information.
- **Stock Details:** View detailed stock information.
- **Market Charts:** Interactive market charts and visualizations.
- **Forex Terminal:** Forex market analysis interface.
- **Technical Indicators:** Explore technical analysis indicators.
- **Trading Journal:** Create and manage research and trading notes.
- **Price Alerts:** Manage market price alerts.
- **Risk-Reward Calculator:** Calculate risk and reward parameters.
- **News Analysis:** Explore market-related news and its potential impact.
- **User Authentication:** Registration and login functionality.
- **User Profile:** Manage user profile information.

## Technology Stack

### Frontend
- React 19
- TypeScript
- Vite
- Tailwind CSS
- HTML5
- CSS3

### Backend
- Java
- Java Servlets
- JDBC
- Apache Tomcat 9

### Database
- Oracle Database
- SQL

### Development Tools
- Visual Studio Code
- Eclipse IDE
- Git
- GitHub
- pnpm

## Project Structure

```text
FSD-II_Smart_Market/
│
├── SmartMarketBackend/
│   ├── src/
│   │   └── main/
│   │       ├── java/
│   │       │   └── com/smartmarket/
│   │       │       ├── dao/
│   │       │       ├── model/
│   │       │       ├── servlet/
│   │       │       └── util/
│   │       └── webapp/
│   │
│   ├── database.sql
│   ├── pom.xml
│   └── view_data.sql
│
├── src/
│   ├── components/
│   ├── data/
│   ├── services/
│   ├── types/
│   ├── App.tsx
│   └── main.tsx
│
├── index.html
├── package.json
├── pnpm-lock.yaml
├── vite.config.ts
├── vercel.json
├── .env.example
└── README.md
```

## Prerequisites

Install the following before running the application:

- Node.js
- pnpm
- Java Development Kit (JDK)
- Apache Tomcat 9
- Oracle Database
- Git

## Installation and Setup

### 1. Clone the Repository

```bash
git clone https://github.com/durga888-max/FSD-II_Smart_Market.git
cd FSD-II_Smart_Market
```

### 2. Install Frontend Dependencies

```bash
pnpm install
```

### 3. Configure Backend Database Connection

Configure the following environment variables for the Java backend:

```text
SMARTMARKET_DB_URL=jdbc:oracle:thin:@localhost:1521:xe
SMARTMARKET_DB_USER=your_database_username
SMARTMARKET_DB_PASSWORD=your_database_password
```

Replace the example values with your own database configuration.

**Security:** Never commit actual database passwords, API keys, or other credentials to GitHub.

### 4. Configure Oracle Database

1. Start the Oracle Database service.
2. Open SQL*Plus or your preferred Oracle SQL tool.
3. Execute the SQL statements in `SmartMarketBackend/database.sql`.
4. Verify that the required database tables have been created.

### 5. Run the Backend

1. Import `SmartMarketBackend` into Eclipse as an existing Maven project.
2. Configure Apache Tomcat 9.
3. Configure the database environment variables for the Tomcat runtime.
4. Build and deploy the backend application.
5. Start the Tomcat server.

The local backend context used by this project is:

```text
http://localhost:8089/smart-market/
```

### 6. Run the Frontend

Open a terminal in the project root and execute:

```bash
pnpm dev
```

Vite will display the local development URL in the terminal.

### 7. Build for Production

```bash
pnpm build
```

The production frontend build is generated in the `dist/` directory.

## Environment Variables

| Variable | Purpose |
|---|---|
| `SMARTMARKET_DB_URL` | Oracle JDBC connection URL |
| `SMARTMARKET_DB_USER` | Database username |
| `SMARTMARKET_DB_PASSWORD` | Database password |

Keep all real credentials in local environment configuration. Do not upload them to the repository.

## Deployment

The React frontend can be deployed using Vercel.

The Java Servlet backend and Oracle Database require separate hosting and configuration. Deploying the frontend alone does not make the backend APIs available publicly.

## Version Control

This project is maintained using Git and GitHub.

Repository: https://github.com/durga888-max/FSD-II_Smart_Market

