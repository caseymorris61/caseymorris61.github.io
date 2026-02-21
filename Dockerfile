FROM jekyll/jekyll:latest

# Set working directory
WORKDIR /srv/jekyll

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock* ./

# Install dependencies
RUN bundle install

# Copy the rest of the site
COPY . .

# Expose Jekyll's default port
EXPOSE 4000

# Default command (can be overridden in docker-compose)
# Use bundle exec to ensure we use the versions from Gemfile
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--force_polling"]
