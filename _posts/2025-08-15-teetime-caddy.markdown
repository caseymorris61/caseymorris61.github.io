---
layout: single
title:  "TeeTimeCaddy"
date:   2025-08-15 16:00:00 +0000
categories: jekyll update
author_profile: true
tags: project ios supabase
---

I'm excited to share [TeeTimeCaddy](https://apps.apple.com/us/app/tee-time-caddy/id6752501496), an iOS app I built to solve a problem that many golfers face: constantly checking booking systems for available tee times at popular public golf courses.

{:refdef: style="text-align: center;"}
![TeeTimeCaddy Logo](/assets/images/tee-time-logo.png){:width="400px"}
{: refdef}

## The Problem

Anyone who's tried to book a tee time at a popular public golf course knows the frustration. You check the booking system repeatedly, hoping to catch a cancellation or newly opened slot, especially for those coveted weekend morning times. It's tedious, time-consuming, and often fruitless. I found myself in this exact situation, constantly refreshing booking pages and still missing out on the times I wanted.

## The Solution

TeeTimeCaddy eliminates the need for manual checking by monitoring tee time availability at your favorite courses and sending you instant push notifications when slots that match your preferences become available. Instead of spending time repeatedly checking booking systems, you can configure your preferences (like Saturday and Sunday mornings) and let the app do the monitoring for you.

{:refdef: style="text-align: center;"}
<a href="https://apps.apple.com/us/app/tee-time-caddy/id6752501496">
  <img src="https://tools.applemediaservices.com/api/badges/download-on-the-app-store/black/en-us?size=250x83&releaseDate=1735689600" alt="Download on the App Store" style="width: 200px;"/>
</a>
{: refdef}

## The Technology Stack

TeeTimeCaddy is built with a modern, serverless architecture that keeps the backend simple and scalable. The app uses [Supabase](https://supabase.com) for both authentication and data storage, making it easy to manage user accounts and store their tee time preferences securely.

The backend monitoring system is powered by Supabase Edge Functions, which handle the periodic scraping of golf course booking systems. These functions are triggered automatically by GitHub Actions running on a cron schedule every 15 minutes, ensuring that availability is checked frequently enough to catch newly opened slots while remaining efficient and cost-effective.

This architecture provides several benefits:
- **Supabase Auth**: Handles user authentication seamlessly, with built-in support for email/password and social logins
- **Supabase Database**: Stores user preferences, course selections, and notification settings in a PostgreSQL database
- **Supabase Functions**: Serverless functions that scrape tee time availability without requiring a dedicated server
- **GitHub Actions**: Reliable, free cron scheduling that triggers the scraping functions every 15 minutes

## How It Works

Users configure their alert preferences by selecting:
- Their preferred courses
- Desired days of the week
- Preferred time ranges

Once configured, TeeTimeCaddy continuously monitors availability at these courses. When a tee time opens up that matches your preferences, you receive an instant push notification. From there, you can tap through to book directly with the course - TeeTimeCaddy doesn't handle bookings itself, ensuring you maintain your direct relationship with the golf course.

## Looking Forward

TeeTimeCaddy is now available on the [App Store](https://apps.apple.com/us/app/tee-time-caddy/id6752501496) and I'm excited to see how it helps golfers secure their ideal tee times. The app represents a combination of practical problem-solving and modern serverless architecture, leveraging tools like Supabase and GitHub Actions to create a reliable, scalable solution.

If you're a golfer who's tired of constantly checking booking systems, give TeeTimeCaddy a try. I'm always looking to expand the list of supported courses, so if you have a favorite course you'd like to see added, or if you have any other feedback or suggestions, I'd love to hear from you!

Note: AI assisted with this blog post.
