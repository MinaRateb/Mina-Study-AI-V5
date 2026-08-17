# Final deployment checklist

## GitHub
1. Create a private repository if you don't want the source public.
2. Push this project.
3. Never commit `.env`, API keys, database files, or user exports.

## Backend hosting
GitHub Pages cannot run the Python API. Deploy `api/server.py` on a Python host.
Set environment variables:
- OPENAI_API_KEY
- OPENAI_MODEL
- SESSION_SECRET
- ADMIN_EMAIL
- ADMIN_PASSWORD
- COOKIE_SECURE=1
- PORT (provided by host)

Start command example:
`gunicorn --chdir api server:app`

## Domain + HTTPS
Put the backend behind HTTPS. If frontend and API use different domains, configure a strict CORS policy and secure cookies appropriately.

## Email verification / password reset
For a large public launch, connect an email provider and add verified email, reset links, account lockout, and audit logs.

## Push notifications
This package includes PWA/service-worker basics and in-page notifications. True closed-browser push requires VAPID Web Push and a push subscription endpoint. Do not pretend the current timer can run after the browser is closed.

## AI costs
For a public platform, add per-user rate limits, quotas, authentication, abuse controls, and usage monitoring before allowing unlimited AI calls.
