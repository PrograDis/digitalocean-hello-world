# DigitalOcean Hello World

Minimal static site ready to deploy on DigitalOcean App Platform, aligned with the cloud providers rubric. Includes an `app.yaml` specification and a Dockerfile using Nginx to validate the build locally.

## Structure

- `index.html`: main page content.
- `app.yaml`: App Platform static site specification.
- `Dockerfile`: lightweight Nginx image for local testing or container-based delivery.

## Prerequisites

- DigitalOcean account with at least one project.
- `doctl` CLI authenticated (`doctl auth init`).
- Docker CLI (optional, used for container validation).

## Recommended Flow (App Platform)

1. Create a repository and push the code:
   ```bash
   git init
   git add .
   git commit -m "feat: hello world digitalocean"
   git remote add origin git@github.com:YOUR_USER/digitalocean-hello-world.git
   git push -u origin main
   ```
2. Apply the App Platform spec:
   ```bash
   doctl apps create --spec app.yaml
   ```
3. Validate the deployment:
   ```bash
   doctl apps list
   doctl apps logs <APP_ID>
   ```
4. Configure custom domains and automatic HTTPS from the DigitalOcean dashboard.

## Reference Docker Image

Build:

```bash
docker build -t youruser/digitalocean-hello-world:latest .
```

Test locally:

```bash
docker run --rm -p 8080:80 youruser/digitalocean-hello-world:latest
```

Publish:

```bash
docker login
docker push youruser/digitalocean-hello-world:latest
```

## What I've Learned

- How to describe a static site deployment using an App Platform spec.
- How to reuse a simple Nginx Dockerfile to verify static assets locally.
- Key CLI commands (`doctl`, `docker`) involved in a DigitalOcean deployment workflow.
- Considerations for extending the project with CI/CD, monitoring, and backend services.

## Suggested Next Steps

- Integrate CI/CD pipelines with GitHub Actions and `doctl apps update`.
- Add monitoring via DigitalOcean Uptime or third-party services.
- Attach a backend component in App Platform (`service` or `worker`) if dynamic features are required.
- Explore Spaces + CDN to serve assets globally with cached distribution.

