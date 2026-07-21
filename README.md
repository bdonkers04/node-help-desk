# Resolve — Enterprise Help Desk

A production-style help desk system built with Node.js, Express, SQL Server, JWT, Multer, Swagger, and Docker.

## Run with Docker

```bash
docker compose up --build
```

Open `http://localhost:3000`. Interactive API documentation is at `http://localhost:3000/api-docs`.

Demo accounts (password `Password123!`):

- Admin: `admin@resolve.local`
- Technician: `alex@resolve.local`
- User: `user@resolve.local`

## Run locally

1. Run `database/init.sql`, then `database/seed.sql` against SQL Server.
2. Copy `.env.example` to `.env` and update the database connection.
3. Run `npm install` and `npm run dev`.

## Security and permissions

- JWT bearer authentication with expiring tokens and bcrypt password hashes
- `User`: create tickets, view their own tickets, comment, attach files
- `Technician`: view assigned/unassigned tickets, change status, comment
- `Admin`: full queue access, assignment, analytics, and team roles
- Helmet headers, auth rate limiting, parameterized SQL, file size/type limits

SMTP is optional. Without it, notification previews are written to the server log.
