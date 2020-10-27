---
layout: single
title:  "RPi Backup Camera"
date:   2019-10-31 16:08:12 +0000
categories: jekyll update
author_profile: true
tags: project
---

In an effort to modernize Craig's car, we found a straightforward and simple way to add a backup camera using an RPi and a smart phone. This post details the steps to unlock better parallel parking in any car!

## Car Modernization

My younger cousin Craig (also an EE and also with a MS in power electronics) moved out to the Bay Area about the same time we did. My wife appreciated having Craig around to keep me company and to work on all of our projects while she was busy with residency. He had an older (2003) BMW that he was interested in modifying to add some new bells and whistles. After playing around with and testing some other ideas, including splicing into the CAN bus and monitoring the messages, we decided a project worth finishing would be a backup camera. I took over the SW/FW for the project, and Craig handled the mechanicals.

## Raspberry Pi Zero W

For a hobby project requiring a camera, my first thought was Raspberry Pi after my positive experience with the [photobooth](/blog/2019/10/10/photo-booth/) and other projects. The Pi Zero, the miniature version, was also a logical option as it is very cheap and has plenty of power to stream video. The first task was to figure out how to power the Pi which was to be placed in the trunk. There were a number of options, such as using a recharable 5V USB portable charger, however, we decided to splice into the car wiring in the truck as described in the image below. 
{:refdef: style="text-align: center;"}
![power](/assets/images/Camera_power_connections.png){:width="400px" height="200px"}
{: refdef}

## Video Streaming

With the RPi needing to be in the trunk so that the camera would be in the traditional area, we needed a solution to stream the video to the user. Naturally, a smart phone mounted on the fan vents would be the ideal destination. It turns out that streaming the raw video from an RPi to a mobile phone was trivial; there are numerous smart phone apps to do this, including [RPi Camera Viewer](https://play.google.com/store/apps/details?id=ca.frozen.rpicameraviewer&hl=en_US). All the app needs is the IP address of the RPi, and it basically ssh's into the Pi and opens a port to stream the Raw H.264 video to the smart phone.

With the mobile phone solution readily available, the only remaining question was how to connect the phone and RPi to the same network in the car. The easiest way to do this was to make the RPi an access point (soft AP mode). This way, the RPi would create a network and the phone would connect to it, allowing the video to stream to the phone, as shown in the figure. 
{:refdef: style="text-align: center;"}
![wifi](/assets/images/Camera_wifi_connections.png){:width="400px" height="200px"}
{: refdef}

Directions to put the Pi into AP mode can be found [here](https://thepi.io/how-to-use-your-raspberry-pi-as-a-wireless-access-point/). The main idea is to edit the hostapd conf files to set the network SSID and password. The commands to start and stop the service are also included. Depending on the use case, the Pi can be configured to start the AP on boot, or, as we did, based on the state of the Reverse signal. Our idea was that the AP would turn on when in reverse so the phone would only connect to it while in Reverse, so that when using the car otherwise, the phone would connect to its normal network. This requires the use of a GPIO, and the script available on my Github [here](https://github.com/caseymorris61/rpi_backup_camera). 

## Mechanicals

Craig worked his magic to 3D print a mount for the camera that screwed into the license plate holder to hold the camera, and thread the camera flex cable through the license plate light. The Pi then sat in the trunk door with the power line wired into it. It was a bit janky but worked great! The only issue was that it took 30-45 seconds for the Pi to boot once the car was turned on, which in practice seemed like an eternity while waiting for the camera to start when trying to reverse out of a parking spot. The UX was much better when parking after having driven somewhere.

{:refdef: style="text-align: center;"}
![mount](/assets/images/Camera-outside-mount.jpeg){:width="400px" height="200px"}
{: refdef}

## Wrap Up

The project didn't require much SW/FW in terms of lines of code written, but instead more system architecture to define the project, wire it up, and configure the Wifi. However, once we figured out how we could do it, we were happy to see the project through. While we were working on Craig's car to install the camera in my driveway, a neighbor walked by and asked what we were doing. When we explained the backup camera, he was very unimpressed and told us we could have just bought a camera to do the same thing. I guess he didn't appreciate the joy of a DIY project! It was a lot of fun and I am glad Craig can now park a bit better. 

{:refdef: style="text-align: center;"}
![mount](/assets/images/camera_proto.jpg){:width="400px" height="200px"}
{: refdef}


2020 Update: Craig sold the car, along with the backup camera! I just hope the included camera increased the resell value!

