+++
categories = ["kubernetes"]
date = "2019-09-10T16:30:00"
description = "adding jenkins to civos kubernetes marketplace"
slug = "jenkins-on-civo-kubernetes-marketplace"
tags = ["jenkins", "civo", "open-source", "kubernetes"]
title = "Jenkins on Civos Kubernetes Marketplace"
+++

[![Slack Status](https://linux-hackers-slack.herokuapp.com/badge.svg)](https://linux-hackers-slack.herokuapp.com/) [![Chat on Slack](https://img.shields.io/badge/chat-on_slack-orange.svg)](https://linux-hackers.slack.com/) [![Drone.io Build Status](https://cloud.drone.io/api/badges/ruanbekker/ruandotdev/status.svg)](https://cloud.drone.io/ruanbekker/ruandotdev) [![GitHub followers](https://img.shields.io/github/followers/ruanbekker.svg?label=Follow&style=social)](https://github.com/ruanbekker) [![Twitter Follow](https://img.shields.io/twitter/follow/ruanbekker.svg?style=social)](https://twitter.com/ruanbekker)

## Kubernetes Marketplace

Recently, Civo built a Managed k3s Kubernetes Service and offers a App Marketplace, where you can select the applications that you want bootstrapped to your deployment.

## Pull Request

My pull request that I sent to add Jenkins to the Marketplace with persistent storage using Longhorn:

- https://github.com/civo/kubernetes-marketplace/pull/12

## Add Jenkins

My PR got merged:

![](https://media.giphy.com/media/3ohzdIuqJoo8QdKlnW/giphy.gif)

Followed by a awesome tweet from Civo:

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Thanks to <a href="https://twitter.com/ruanbekker?ref_src=twsrc%5Etfw">@ruanbekker</a> for submitting <a href="https://twitter.com/jenkinsci?ref_src=twsrc%5Etfw">@jenkinsci</a> to our open Kubernetes Marketplace running on the world&#39;s first managed k3s service! <a href="https://twitter.com/hashtag/jenkins?src=hash&amp;ref_src=twsrc%5Etfw">#jenkins</a> <a href="https://twitter.com/hashtag/k3s?src=hash&amp;ref_src=twsrc%5Etfw">#k3s</a> <a href="https://twitter.com/hashtag/opensource?src=hash&amp;ref_src=twsrc%5Etfw">#opensource</a> <a href="https://twitter.com/hashtag/kubernetes?src=hash&amp;ref_src=twsrc%5Etfw">#kubernetes</a> <a href="https://t.co/aW1FVKOqfY">pic.twitter.com/aW1FVKOqfY</a></p>&mdash; Civo Cloud (@CivoCloud) <a href="https://twitter.com/CivoCloud/status/1186967773655773184?ref_src=twsrc%5Etfw">October 23, 2019</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>


## Check it out

If you want to check it out in action, have a look at my blogpost about it:

- https://sysadmins.co.za/deploy-jenkins-on-civos-marketplace-for-kubernetes/

## Thanks

Thanks for reading!

<p>
<script type='text/javascript' src='https://ko-fi.com/widgets/widget_2.js'></script><script type='text/javascript'>kofiwidget2.init('Buy Me a Coffee', '#46b798', 'A6423ZIQ');kofiwidget2.draw();</script>
<p>
