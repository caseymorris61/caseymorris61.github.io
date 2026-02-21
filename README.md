# caseymorris61.github.io

Personal website and blog built with Jekyll and the Minimal Mistakes theme.

## Local Development Setup

### Prerequisites

- **Ruby**: Version 3.1.2 (recommended). Use [rbenv](https://github.com/rbenv/rbenv) or [rvm](https://rvm.io/) to manage Ruby versions.
- **Bundler**: Install with `gem install bundler`

### Initial Setup

1. **Install Ruby** (if not already installed):
   ```bash
   # Using rbenv
   rbenv install 3.1.2
   rbenv local 3.1.2
   
   # Or using rvm
   rvm install 3.1.2
   rvm use 3.1.2
   ```

### Prerequisites

- **Docker**: [Install Docker Desktop](https://www.docker.com/products/docker-desktop) or Docker Engine
- **Docker Compose**: Usually included with Docker Desktop

### Quick Start with Docker

**Start the development server**:
```bash
docker-compose up
```

The site will be available at `http://localhost:4000` with live reload enabled.

**Start in detached mode** (runs in background):
```bash
docker-compose up -d
```

**Stop the server**:
```bash
docker-compose down
```

**View logs**:
```bash
docker-compose logs -f
```

### Docker Commands

**Build the Docker image**:
```bash
docker-compose build
```

**Rebuild without cache** (if you have dependency issues):
```bash
docker-compose build --no-cache
```

**Run Jekyll commands in the container**:
```bash
# Build the site
docker-compose run --rm jekyll jekyll build

# Clean generated files
docker-compose run --rm jekyll jekyll clean

# Check for issues
docker-compose run --rm jekyll jekyll doctor

# Serve with drafts
docker-compose run --rm -p 4000:4000 jekyll jekyll serve --host 0.0.0.0 --drafts
```

**Access the container shell**:
```bash
docker-compose exec jekyll sh
```

**Update dependencies**:
```bash
docker-compose run --rm jekyll bundle update
```

### Docker Development Options

**Serve with drafts enabled**:
```bash
docker-compose run --rm -p 4000:4000 jekyll jekyll serve --host 0.0.0.0 --drafts
```

**Build for production**:
```bash
docker-compose run --rm -e JEKYLL_ENV=production jekyll jekyll build
```

### Docker Troubleshooting

- **If changes aren't reflected**: The `--force_polling` flag is enabled for better file watching in Docker. If issues persist, restart the container with `docker-compose restart`.

- **If port 4000 is already in use**: Change the port mapping in `docker-compose.yml` from `"4000:4000"` to `"4001:4000"` (or another available port).

- **If bundle install fails**: Rebuild the image with `docker-compose build --no-cache`.

- **Permission issues on Linux**: You may need to adjust file permissions or use `--user` flag in docker-compose.yml.

## Future Blog Posts
* CFB Ranking and Django Web App
* What's Casey Eating (San Diego Tacos/Burritos, Memphis BBQ, etc.)
* Resume HTML page
* Recipes: German Chocolate Cake, Pumpkin Chocolate Chip bread

