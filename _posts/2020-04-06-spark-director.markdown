---
layout: single
title:  "SparkDirector Android App"
date:   2020-04-08 16:08:12 +0000
categories: jekyll update
author_profile: true
tags: project
---

After years and years of interest in mobile application development, I finally dedicated a chunk of time to bunker down and learn the magic behind apps. This post is about the Android app I built during the early days of the COVID-19 lockdown.  

{:refdef: style="text-align: center;"}
![Android](/assets/images/android.png){:width="400px" height="200px"}
{: refdef}

I have been interested in mobile apps since I started using a smart phone (an Android) in college. A few different times I started to get into app development, but in the earlier days, i.e. 2012-2013, the barrier to entry was a bit higher, especially for an electrical engineer with no software experience. I started to think about getting into app development projects after a while at Orro, since our switch runs Android and an Android app. My bosses were great about helping me get my feet wet in the app space, assigning me beginner tickets and allowing me to spend some time learning that side of software development. Not to mention, we had a lot of Android work to do and only one Android engineer at the time. After a few months, and continued interest in Android, I decided I was ready to start my own app.

### Udacity
In addition to my work at Orro starting in Android, I did a few free Udacity classes related to Kotlin and Android app development. This was quite a big commitment, but it was definitely worth it. I learned a ton about the frameworks and basic design principles used in Android. The classes were taught by Google employees and were up to date. These classes taught the MVVM architecture (which was different than the MVP we used).
 - [Kotlin Bootcamp for Programmers](https://www.udacity.com/course/kotlin-bootcamp-for-programmers--ud9011)
 - [Developing Andoird Apps with Kotlin](https://www.udacity.com/course/developing-android-apps-with-kotlin--ud9012)


## SparkDirector
At the time at Orro, we ran Android on our switch but we actually didn't have an Android mobile app. The iOS is mostly needed for setup, but can also be useful for changing the lights. I settled on a project that would be educational for me and solve an actual need. My goal was to create an Android app that could control the Orro lights. Meet [SparkDirector](www.caseytmorris.com/sparkdirector).

![Android](/assets/images/SparkDirector_control_empty.png){:height="400px" width="200px"}
![Android](/assets/images/SparkDirector_add.png){:height="400px" width="200px"}
![Android](/assets/images/SparkDirector_control.png){:height="400px" width="200px"}
![Android](/assets/images/SparkDirector_edit.png){:height="400px" width="200px"}

### IFTTT
One of the latest integrations we had added was [IFTTT](www.ifttt.com). This allowed users to control their lights via other IoT related devices/controls. I had read about RPi based projects that controlled smart light bulbs via IFTTT, so I figured IFTTT could be utilized to create an Android app to control Orro switches. The main idea is to use the Webhooks IFTTT service to create an API to trigger actions to control the Orro light. The idea was based on the tutorial [here](https://thepihut.com/blogs/raspberry-pi-tutorials/using-ifttt-with-the-raspberry-pi).

With the API set up, the main work of the app is to send HTTP Post requests to control the light state. There is no data to retrieve from the switch, so it is just one way communication and relatively straightforward once the endpoints and key is provided by the user. The process does require the user to do some work outside the app in IFTTT to get everything setup.

{:refdef: style="text-align: center;"}
![Android](/assets/images/IFTTT_Orro_connect.png){:height="400px" width="400px"}  
{: refdef}

Note: As of Oct 31st, 2020, IFTTT is only free for 3 applets, which is the number required to control 1 switch.

### UI/UX
The idea was to make the app look like the Orro app. Each light would have a card with a slider to adjust the light and show the state. Selecting the card then allowed you to edit the settings, in the case of SparkDirector, the api endpoints and keys. The rest of the views are for adding and editing switches. 

### Firebase
Originally, the app was designed to use a local database to store the switch API data in order to control the light. However, I had designs for other cloud based features (vacation mode, scheduled lighting, etc.). This required a backend solution, including authentication and storage. This was a great opportunity to also learn the ins and outs of Firebase. There are easy to use Android libraries, including everything for authentication. Users then must create accounts and can access their switches from multiple phones, etc. Firebase was easy to pick up and easy to implement. Would highly recommend as a backend service for future projects! 

## Resources
All of the code for the Android app is available on github [here](https://github.com/caseymorris61/sparkdirector). More information about the app and setup, etc. can be found on the [SparkDirector website](http://caseytmorris.com/sparkdirector/).


