# API Summary

## What is a REST API?
A REST API lets two programs talk to each other over the internet using normal HTTP requests. Every piece of data, such as a user or a post, has its own URL, and a request like GET fetches it. The server sends the data back, usually as JSON, which programs can easily read.

## HTTP Status Codes Observed
- **200 OK:** The request succeeded and the server returned the data. I saw this when I requested my own profile at `https://api.github.com/users/bhaweshbehwal`.
- **404 Not Found:** The server could not find the resource I asked for. I saw this when I requested a user that does not exist, `https://api.github.com/users/thisuserdoesnotexist999xyz`.

## jq Filter Used
`jq '{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}'`

- `jq`: a command-line tool that reads, filters and formats JSON data.
- `{ ... }`: the braces build a new, smaller JSON object containing only the fields I choose.
- `name:.name`: takes the `name` field from the input JSON (the `.name` part) and stores it under the key `name`.
- `repos:.public_repos`: takes the `public_repos` field (my number of public repositories) and renames it to `repos`.
- `followers:.followers`: takes the `followers` field (my follower count) and keeps the same key name.
- `joined:.created_at`: takes the `created_at` field (the date my account was created) and renames it to `joined`.
EOF
