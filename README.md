# Phoenix OAuth Example Project

## Introduction

This repository contains a Phoenix application demonstrating how to integrate OAuth authentication. It uses `phx.gen.auth` for standard user authentication and `ueberauth` for third-party OAuth providers like Auth0. It's intended as a practical example to help developers understand and implement OAuth in their Phoenix applications.

## Features

- User authentication with `phx.gen.auth`
- Third-party OAuth integration using `ueberauth`
- Examples of using Auth0 as an OAuth provider

## Getting Started

### Prerequisites

- Elixir 1.11 or later
- Phoenix 1.5 or later
- PostgreSQL 12 or later

### Setup

1. **Clone the Repository**

   ```sh
   git clone https://github.com/ahmcu007/auth_demo.git
   cd auth_demo
   ```

2. **Install Dependencies**
  
    ```sh
      mix deps.get
    ```


3. **Create and migrate your Database**
    ```sh
      mix ecto.create
    ```

3. **Configuration and Environment Variables**

    Set up the required environment variables for OAuth providers in your `config/dev.exs` or use environment variables:
    ```elixir
      config :ueberauth, Ueberauth.Strategy.Auth0.OAuth,
        client_id: System.get_env("AUTH0_CLIENT_ID"),
        client_secret: System.get_env("AUTH0_CLIENT_SECRET"),
        domain: System.get_env("AUTH0_DOMAIN")
    ```

    Export your enviroment variables 

    ```sh
    export AUTH0_CLIENT_ID="your_auth0_client_id" \
    && export AUTH0_CLIENT_SECRET="your_auth0_client_secret" \
    && export AUTH0_DOMAIN="your_auth0_domain"

    ```

5. **Start Phoenix Server**

    ```sh
      mix phx.server
    ```
    Now you can visit [localhost:4000](http://localhost:4000) from your browser.

### Usage
 - Explore user registration and login functionalities.
 - Experiment with logging in through Auth0.

### Contributing

Contributions are welcome, especially for bug fixes and enhancements. Please open issues and pull requests for any contributions.

### License
MIT License - feel free to use and share!