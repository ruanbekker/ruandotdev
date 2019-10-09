+++
categories = ["kubernetes"]
date = "2019-09-10T16:30:00"
description = "adding mongodb to civos kubernetes marketplace"
slug = "my-first-app-on-civo-kubernetes-marketplace"
tags = ["mongodb", "civo", "open-source", "kubernetes"]
title = "My First App on Civos Kubernetes Marketplace"
+++

[![Slack Status](https://linux-hackers-slack.herokuapp.com/badge.svg)](https://linux-hackers-slack.herokuapp.com/) [![Chat on Slack](https://img.shields.io/badge/chat-on_slack-orange.svg)](https://linux-hackers.slack.com/) [![Drone.io Build Status](https://cloud.drone.io/api/badges/ruanbekker/ruandotdev/status.svg)](https://cloud.drone.io/ruanbekker/ruandotdev) [![GitHub followers](https://img.shields.io/github/followers/ruanbekker.svg?label=Follow&style=social)](https://github.com/ruanbekker) [![Twitter Follow](https://img.shields.io/twitter/follow/ruanbekker.svg?style=social)](https://twitter.com/ruanbekker)

## Kubernetes Marketplace

Recently, Civo built a Managed k3s Kubernetes Service and offers a App Marketplace, where you can select the applications that you want bootstrapped to your deployment.

They offer the community to contribute and I decided that I want to add MongoDB as it was not part of the Databases category at that time:

<img width="1119" alt="image" src="https://user-images.githubusercontent.com/30043398/66486262-8cdacc00-eaaa-11e9-8b91-c500bd896281.png">


## Add MongoDB

I got to work and added mongodb in this pull request https://github.com/civo/kubernetes-marketplace/pull/8/files and sent it to them for review.

A couple minutes later, Oh yeah! My pull-request got merged:

- https://github.com/civo/kubernetes-marketplace/pull/8

Followed by a awesome tweet from Civo:

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Thank you very much <a href="https://twitter.com/ruanbekker?ref_src=twsrc%5Etfw">@ruanbekker</a> for adding <a href="https://twitter.com/MongoDB?ref_src=twsrc%5Etfw">@MongoDB</a> to our open source Kubernetes marketplace! <a href="https://t.co/04Na1XFEtW">https://t.co/04Na1XFEtW</a> <a href="https://twitter.com/hashtag/kubernetes?src=hash&amp;ref_src=twsrc%5Etfw">#kubernetes</a> <a href="https://twitter.com/hashtag/k8s?src=hash&amp;ref_src=twsrc%5Etfw">#k8s</a> <a href="https://twitter.com/hashtag/k3s?src=hash&amp;ref_src=twsrc%5Etfw">#k3s</a> <a href="https://twitter.com/hashtag/KUBE100?src=hash&amp;ref_src=twsrc%5Etfw">#KUBE100</a> <a href="https://twitter.com/hashtag/mongodb?src=hash&amp;ref_src=twsrc%5Etfw">#mongodb</a> <a href="https://t.co/FMi4mMPn3A">pic.twitter.com/FMi4mMPn3A</a></p>&mdash; Civo Cloud (@CivoCloud) <a href="https://twitter.com/CivoCloud/status/1181910916469858305?ref_src=twsrc%5Etfw">October 9, 2019</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script> 


Navigating to the Kubernetes Marketplace:

<img width="1094" alt="image" src="https://user-images.githubusercontent.com/30043398/66486443-e3480a80-eaaa-11e9-971f-713bcfa6fed4.png">

Oh yess!! What a awesome feeling!

## Test Run

Download the kube config and set it to your environment:

```
$ export KUBECONFIG="/Users/ruan.bekker/Downloads/civo-mongodb-kubeconfig"
```

View the pods:

```
$ kubectl get pods
NAME                       READY   STATUS    RESTARTS   AGE
mongodb-747f7fbb99-2njgv   1/1     Running   0          49m
```

Access MongoDB:

```
$ kubectl exec -it mongodb-747f7fbb99-2njgv -- mongo
MongoDB shell version v4.2.0
connecting to: mongodb://127.0.0.1:27017/?compressors=disabled&gssapiServiceName=mongodb
Implicit session: session { "id" : UUID("f399f513-fa11-4728-8302-c27556ffbd22") }
MongoDB server version: 4.2.0
Welcome to the MongoDB shell.
For interactive help, type "help".

> use admin
switched to db admin
```

## Thanks

Thanks for reading!

