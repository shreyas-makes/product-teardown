# Product Teardown App

The Product Teardown App is a web application designed to analyze and dissect digital products across various dimensions such as strategy, user experience, market positioning, and more. It allows users to perform detailed assessments and generate insights into the strengths and weaknesses of digital products.

## Table of Contents

- [Features](#features)
- [Technologies Used](#technologies-used)
- [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Database Setup](#database-setup)
  - [Environment Variables](#environment-variables)
  - [Running the App](#running-the-app)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Features

- **Detailed Assessment:** Perform in-depth evaluations of digital products across multiple categories including strategy, user experience, market positioning, and more.
- **Structured Data Storage:** Store and analyze detailed teardowns of products in a structured format within the application.
- **User-Friendly Interface:** Intuitive interface designed to facilitate easy navigation and efficient data entry.
- **Scalable Architecture:** Built on a scalable architecture to accommodate future enhancements and additional features.

## Technologies Used

- **Ruby on Rails**: Web application framework
- **PostgreSQL**: Database management system
- **Tailwind CSS**: Utility-first CSS framework
- **Devise**: Authentication for Rails applications
- **RSpec**: Testing framework for Ruby

## Setup

### Prerequisites

Before you begin, ensure you have the following installed on your local machine:

- Ruby (version 3.3.2)
- Rails (version 7.2.0.beta2)
- PostgreSQL (version 14)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/your/repository.git
   cd ProductTeardownApp
```
```
bundle install
```

Database Setup
Ensure PostgreSQL is running locally.

Create the development and test databases:

```
rails db:create
```

Run migrations to set up the database schema:
```
rails db:migrate
```

# Environment Variables
Rename .env.example to .env and update the environment variables as necessary:

```
POSTGRES_USERNAME=your_postgres_username
POSTGRES_PASSWORD=your_postgres_password
POSTGRES_HOST=localhost
```

Load the environment variables:

```
source .env
```

# Running the App
Start the Rails server:

```
rails s
```
Access the application at http://localhost:3000.

# Usage
Creating a Teardown: Navigate to a product's page and initiate a teardown to analyze various aspects of the product.
Editing Teardown Details: Modify existing teardowns to update assessments and evaluations.
Viewing Product Insights: Gain insights from detailed teardowns stored in the application.
Contributing
Contributions are welcome! Please fork the repository and create a pull request for any enhancements, bug fixes, or additional features you would like to propose.

