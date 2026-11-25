# REST API Interaction Summary

## What is a REST API?
A REST (Representational State Transfer) API is an interface that allows software applications to communicate over the web using standard HTTP methods like `GET` and `POST`. Clients send requests to specific URL endpoints, and the server returns structured data—most commonly in JSON format.

## HTTP Status Codes Observed
* **200 OK:** The request succeeded and the server returned the requested JSON payload without errors.
* **404 Not Found:** The server could not locate the requested user or endpoint URL.

## `jq` Filter Breakdown
`jq '{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}'`

* `{ ... }`: Creates a new JSON object containing only our selected fields.
* `name:.name`: Extracts the `.name` field from the raw GitHub API response.
* `repos:.public_repos`: Extracts `.public_repos` and renames the key to `repos`.
* `followers:.followers`: Extracts the user's `.followers` count.
* `joined:.created_at`: Extracts the account creation timestamp `.created_at` and renames it to `joined`.
