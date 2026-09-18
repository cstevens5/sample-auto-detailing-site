# Database migrations

Add Flyway SQL migrations to this directory using versioned filenames, for
example:

```text
V1__create_users_table.sql
V2__add_email_to_users.sql
```

Run PostgreSQL and apply pending migrations with:

```sh
docker compose up
```
