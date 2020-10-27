---
layout: single
title:  "KBO Fantasy Baseball"
date:   2020-05-15 16:08:12 +0000
categories: jekyll update
author_profile: true
tags: project
---

2020 has been a unique year in so many ways. One of the less important differences was the lack of professional sports for more than 3 months. The beginning of the pandemic had already claimed March Madness, the start of the MLB season, the Masters, and the beginning of the NBA and NHL Playoffs in a few short (or very long) weeks. Korean baseball was one of the first sports to return, so I decided to fill the void and create a KBO fantasy site for all sports-starved fans!

## KBO
{:refdef: style="text-align: center;"}
![KBO](/assets/images/KBO_logo.png){:width="300px" height="150px"}
{: refdef}
The Korean Baseball Organization, or KBO, is the highest level of professional baseball in Korea. I had heard of it over the last few years as some former MLB players chose to play there, and vice versa. They resumed playing at the end of April and with the lack of sports, it gained a bit of popularity in the US. They even began showing a few games a day on ESPN in the mornings. Another reason for its ability to catch on was the English language site dedicated to KBO, [MyKBO](https://mykbostats.com/). This site was started as a hobby by Korean-American baseball fan and was full of terrific stats tailored to the English speaking fans. Understandably, its traffic exploded during the pandemic. While the site did contain a weekly fantasy contest where all users competed against one another and all created their own teams, it was different than traditional fantasy leagues that could be played amongst friends.

## Fantasy Baseball
One mid-morning, one of my buddies, Matt, called me to ask if I would be interested in starting a Korean Fantasy Baseball league. Having been impressed and excited after watching a game or two of the early season, I was sold. He suggested we look for a way to start a league, and if not, see if we could put something together ourselves. As it turned out, there was no fantasy sports provider that offered a season long KBO league (there were Daily KBO Fantasy sports, but that was not what we were looking for). We wanted a league much like our MLB and NFL fantasy teams, where we draft teams for the season and compete over the course of the year.

The week that Matt called I had just started diving into building some simple webapps using JavaScript. The only web app dev I had done to that point had been a Django based project, but from all of the Meetups I had been to in Memphis, it was clear JavaScript frameworks were something I should dive into. This also was around the time I started to learn about Firebase and its SDKs that enable real-time databases to sync and update single page applications. So, after we concluded that there was no existing solution for a KBO fantasy baseball league, I figured I might as well try to build a web app myself! I knew the data was already available on MyKBO, so I only needed to make the fantasy logic. This timing of his call was really perfect and this gave me the perfect project for me to learn more about web development and javascript frameworks.


![KBO](/assets/images/KBO_add_players.png){:width="300px" height="150px"}
![KBO](/assets/images/KBO_league.png){:width="300px" height="150px"}

## JavaScript 

In some of my previous minor dealings with web dev, I had come across JavaScript very minimally and did not have a good understanding of how it worked and how it made websites so powerful. People at work and at Meetups would mention things like Node, and it would confuse me further. I wasn't able to see the difference between JavaScript as a language/syntax, and Node/browsers as a runtime environment; that is until I started playing around with it. 

One of the Firebase tutorials I did for both Android and Web Dev was for a chat app. This really helped me put together the pieces of how the web app was rendered in the browser and interacted with the Firebase backend. This had enough of the basics to take user input in the form of buttons, etc., make CRUD operations in the database, and then view the changes in real time from the single page app. It was from this sample project that I started to build the Fantasy Baseball app.

## MVP 

The MVP (minimal viable product) of the site included the ability to create a league, add teams to the league, list all of the players and allow them to be assigned to one team only per league. The app would then have to keep a history of the performance of each team in order to compare the teams in the league. I decided to use the rotisserie fantasy format, where there are 10 statistical categories that accumulate over the entire season, and then the performance of each team in these 10 categories determine the winner of the league. This was by far an easier format to start with than a weekly head-to-head.

Thus, the MVP required 3 views once authenticated and a team was created: a home view showing the user's team, a league view showing the standings, and an available players view. The first iteration of the app was actually 3 different javascript pages (not a single page app), each with its own very large and human readable javascript file. A lot of this code was duplicated everywhere and it was not maintainable, but I was able to get a functional site up and running (in large part to Firebase backend with Auth made very easy, and using Firebase hosting and routing for the 3 pages). This allowed our league of 4 to host our draft as early as possible, just 2 weeks into the season and less than 1 week since I learned anything about JavaScript.

## Vue
{:refdef: style="text-align: center;"}
![KBO](/assets/images/vue_logo.jpeg){:width="300px" height="150px"}
{: refdef}

The initial site left a lot to be desired, plus I wanted something that others could also use if they wanted to play KBO fantasy baseball, so I decided to rewrite the entire site using a modern JS framework. After much research and some sampling, I decided to go with VueJS over React. One of the main reasons I went with Vue was that it seemed a little easier to take existing code and use in the framework than in React (maybe that's not true but that was how it seemed to me at the time). Taking my 3 page app with tons of repeated/reused code and transforming to components was a genuine light bulb going off moment. It became very clear how the framework was intended to be used and the many benefits it, and other frameworks, brought to web development. It didn't take too long to get the hang of and to start implementing some really cool features. For example, adding the "Draft" and "Claim" buttons to the player page, as well as the Add/Drop player modals really made the site feel like a true fantasy site.

## Netlify
{:refdef: style="text-align: center;"}
![KBO](/assets/images/netlify_logo.jpeg){:width="300px" height="150px"}
{: refdef}

One of the meetups in Memphis I frequented often talked about the "JAMStack" and [Netlify](https://www.netlify.com/). Again, at the time, I was still trying to sort out how a web app was a "static" site (because in my mind Django-like apps were dynamic apps), but I tucked that info away. Now, having started to work on the Vue app, it became clear that this app was a perfect application of the JAMStack and Netlify. Plus, Netlify is a great option for hosting free apps, including benefits like a CDN, all made possible because the site is statically generated. So, I set up the site on Netlify, bought a domain name, and [KBO Fantasy Baseball](http://kbofantasybaseball.com) was live for the world to use!

## Stats

One of the many aspects of the site that I have yet to get into much detail is the actual stats shown on the site. As I mentioned [MyKBO](https://mykbostats.com/) hosted all of the stats, so I built a Python scrapper to scan the site for updates in players stats by the week. I then updated the stats in my Firebase Database and processed the updates for each fantasy league. This project would not have been possible without all of the data from [MyKBO](https://mykbostats.com/), which I linked to for every player, and they have my eternal thanks.

## Wrap Up

I had infinitely more fun developing the site than participating in the league. As of this writing, I am destined to finish in 3rd place (out of 4), a place I have been stuck in for much of the season. Though the enthusiasm in KBO waned as American sports returned, it was a lot of fun and really was the perfect project to learn more about Web development and JS frameworks. Also, many thanks to the 11 other people who came across the site and signed up. I hope it made the sports-barren time of 2020 a little more bearable. Go Wiz!

