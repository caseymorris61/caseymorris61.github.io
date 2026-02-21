source "https://rubygems.org"

# GitHub Pages gem - includes Jekyll and all dependencies
# To upgrade, run `bundle update github-pages`
gem "github-pages", "~> 228", group: :jekyll_plugins

# Minimal Mistakes theme
gem "minimal-mistakes-jekyll"

# Required for Ruby 3.0+ compatibility
gem "webrick", "~> 1.7"

# Jekyll plugins (many are included in github-pages, but listed here for clarity)
group :jekyll_plugins do
  gem "jekyll-paginate"
  gem "jekyll-sitemap"
  gem "jekyll-gist"
  gem "jekyll-feed"
  gem "jemoji"
  gem "jekyll-include-cache"
  gem "jekyll-algolia"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.0" if Gem.win_platform?

