---
layout: single
title:  "WagerLeagueBets"
date:   2025-05-01 16:00:00 +0000
categories: jekyll update
author_profile: true
tags: project web supabase postgres
---

I'm excited to share [WagerLeagueBets](https://wagerleaguebets.com), a web application for a fantasy sports betting idea I've been carrying around for 8 years. Some down time and exploring some AI coding tools finally brought to life.

{:refdef: style="text-align: center;"}
![WagerLeagueBets Logo](/assets/images/wager-league-bets-logo.png){:width="400px"}
{: refdef}

## The Genesis

The idea for WagerLeagueBets has been in my mind for about 8 years. At its core, the concept is simple: create a way to bet on sports and compare yourself to friends without actually wagering money. I wanted a platform where you could make picks, track your performance, and see how you stack up against your friends - all the fun and competition of betting, but purely for bragging rights and friendly competition.

## The Technology Stack

WagerLeagueBets is built on a modern, scalable architecture using [Supabase](https://supabase.com) for both authentication and database management. Supabase's PostgreSQL database serves as the backbone of the application, storing all league data, user information, and bet tracking details.

One of the most interesting technical aspects of this project was exploring PostgreSQL functions for managing bet tracking. Rather than handling all the logic in application code, I leveraged PostgreSQL's powerful function capabilities to handle complex calculations, bet validation, and league standings updates directly in the database. I did this as an attempt to keep all bet changes atomic and because I wanted to play around with the database functions. However, going forward, it would be easier to manage in a serverless function or other backend code!

The application uses Supabase Auth for secure user authentication, making it easy for users to sign up, log in, and manage their accounts. The combination of Supabase's authentication and database services created a seamless development experience while providing enterprise-grade security and reliability.

## The 2025 Season Experience

I had the opportunity to put WagerLeagueBets to the test during the 2025 season, participating in two different leagues with friends. It was incredibly rewarding to see the application work in real-world scenarios, handling picks, tracking standings, and managing the friendly competition between league members.

While I didn't win either league (much to my chagrin), the experience was invaluable. Using the app in real leagues helped me identify areas for improvement, understand user workflows better, and see how the PostgreSQL functions performed under actual load. The feedback from other league participants also provided insights that will help shape future development. Most importantly, it was fun to compete with friends and see who had the best sports predictions - all without any real money on the line.

## Looking Forward

WagerLeagueBets is now live at [wagerleaguebets.com](https://wagerleaguebets.com), and I'm excited to continue improving it based on real-world usage. The project represents a perfect blend of a long-held idea, dedicated development time, and modern technology choices that made it all possible.

If you're interested in competing with friends on sports predictions without the risk of real money, I'd love for you to give WagerLeagueBets a try. And if you have feedback, suggestions, or feature requests, I'm always eager to hear from users!

Note: AI assisted with this blog post.
