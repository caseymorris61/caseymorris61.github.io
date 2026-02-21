---
layout: single
title:  "TeeTimeCaddy: Never Miss a Perfect Tee Time"
date:   2025-08-15 16:00:00 +0000
categories: jekyll update
author_profile: true
tags: project ios kotlin multiplatform
---

I'm excited to share [TeeTimeCaddy](https://apps.apple.com/us/app/tee-time-caddy/id6752501496), an iOS app I built to solve a problem that many golfers face: constantly checking booking systems for available tee times at popular public golf courses.

## The Problem

Anyone who's tried to book a tee time at a popular public golf course knows the frustration. You check the booking system repeatedly, hoping to catch a cancellation or newly opened slot, especially for those coveted weekend morning times. It's tedious, time-consuming, and often fruitless. I found myself in this exact situation, constantly refreshing booking pages and still missing out on the times I wanted.

## The Solution

TeeTimeCaddy eliminates the need for manual checking by monitoring tee time availability at your favorite courses and sending you instant push notifications when slots that match your preferences become available. Instead of spending time repeatedly checking booking systems, you can configure your preferences (like Saturday and Sunday mornings) and let the app do the monitoring for you.

{:refdef: style="text-align: center;"}
<a href="https://apps.apple.com/us/app/tee-time-caddy/id6752501496">
  <img src="https://tools.applemediaservices.com/api/badges/download-on-the-app-store/black/en-us?size=250x83&releaseDate=1735689600" alt="Download on the App Store" style="width: 200px;"/>
</a>
{: refdef}

## Built with Kotlin Multiplatform

One of the most interesting aspects of this project was building it using [Kotlin Multiplatform](https://kotlinlang.org/docs/multiplatform.html). As someone interested in multiplatform development, this was a great opportunity to explore sharing business logic and data models across platforms while still maintaining native UI experiences.

Kotlin Multiplatform allowed me to:
- Share core logic for monitoring tee time availability across platforms
- Maintain a single source of truth for data models and business rules
- Write platform-specific UI code for iOS using SwiftUI, ensuring a native feel
- Lay the groundwork for potential future Android or other platform versions

The experience of working with Kotlin Multiplatform was both challenging and rewarding. It required thinking carefully about platform boundaries and how to structure code for maximum code sharing while still leveraging platform-specific capabilities.

## How It Works

Users configure their alert preferences by selecting:
- Their preferred courses
- Desired days of the week
- Preferred time ranges

Once configured, TeeTimeCaddy continuously monitors availability at these courses. When a tee time opens up that matches your preferences, you receive an instant push notification. From there, you can tap through to book directly with the course - TeeTimeCaddy doesn't handle bookings itself, ensuring you maintain your direct relationship with the golf course.

## Looking Forward

TeeTimeCaddy is now available on the [App Store](https://apps.apple.com/us/app/tee-time-caddy/id6752501496) and I'm excited to see how it helps golfers secure their ideal tee times. The app represents a combination of practical problem-solving and technical exploration, particularly in the realm of multiplatform development.

If you're a golfer who's tired of constantly checking booking systems, give TeeTimeCaddy a try. And if you have feedback or suggestions, I'd love to hear from you!
