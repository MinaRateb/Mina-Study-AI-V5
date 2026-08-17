# Mina Study AI V5 🤖📚

Full-stack student study platform: student signup/login, admin approval, multiple admins, per-student schedules and grades, Excel/CSV plan import, AI study help, and motivational notifications.

## GitHub → Render deployment
This project is a Flask web service, not a GitHub Pages-only static site. GitHub stores the code; Render runs the backend and gives you a public URL.

### Render settings
- Build: `pip install -r requirements.txt`
- Start: `gunicorn api.server:app --bind 0.0.0.0:$PORT`
- Python: 3.13
- Set environment variables in Render: `ADMIN_EMAIL`, `ADMIN_PASSWORD`, `OPENAI_API_KEY` (optional until AI is enabled), `OPENAI_MODEL`.

### First admin
The server automatically creates the admin account from `ADMIN_EMAIL` and `ADMIN_PASSWORD` on first start.

### Security
Never upload `.env`, `mina_study.db`, API keys, or real student data to GitHub. Use Render Environment Variables for secrets.

### Data note
The included demo uses SQLite for the quickest first deployment. SQLite on a free cloud web service is not a production persistence solution. Before real student use, move the database to PostgreSQL (or another managed persistent database) and add backups.

## Database
For online deployment, set `DATABASE_URL` to a persistent PostgreSQL connection string. If it is omitted, the app falls back to local SQLite for testing.

## Arabic Excel
The platform accepts Arabic XLSX/CSV headers and includes `Student_Weekly_Plan_Arabic.xlsx` plus an in-site download button.

## Student tutorial
The home screen includes a 4-step Arabic tutorial explaining account approval, Excel preparation/upload, and AI usage.
