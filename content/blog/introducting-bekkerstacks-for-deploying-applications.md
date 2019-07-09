+++
categories = ["docker"]
date = "2019-06-28"
description = "bekkerstacks for easy application deployment to docker swarm"
slug = "introducting-bekkerstacks-for-deploying-applications"
tags = ["docker", "bekkerstacks"]
title = "Introducing BekkerStacks for Easy Application Deployment"
+++

[![Say Thanks!](https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg)](https://saythanks.io/to/ruanbekker) [![Slack Status](https://linux-hackers-slack.herokuapp.com/badge.svg)](https://linux-hackers-slack.herokuapp.com/) [![Chat on Slack](https://img.shields.io/badge/chat-on_slack-orange.svg)](https://linux-hackers.slack.com/) [![Drone.io Build Status](https://cloud.drone.io/api/badges/ruanbekker/ruandotdev/status.svg)](https://cloud.drone.io/ruanbekker/ruandotdev) [![GitHub followers](https://img.shields.io/github/followers/ruanbekker.svg?label=Follow&style=social)](https://github.com/ruanbekker) [![Twitter Follow](https://img.shields.io/twitter/follow/ruanbekker.svg?style=social)](https://twitter.com/ruanbekker)

![docker-swarm-image-from-docker.com](https://user-images.githubusercontent.com/50801771/60388635-c5830680-9ab4-11e9-8a11-dd0de95139f2.png)

## BekkerStacks, what is it?

So you have your Docker Swarm up and running, and it's pretty empty, and you want to deploy applications to your Swarm.

The main idea was to have a central place with repositories for different stacks, almost like a template store where you can pick and choose, how you would like your stack to look like.

So I started this project "**[BekkerStacks](http://github.com/bekkerstacks)**" with the intention to deploy applications to Docker Swarm in a simplistic manner.

## How would a deployment look like?

A deployment flow for a reverse proxy and web based application will look like this:

1. Set your DNS `*.mydomain.com` to your Hosts where Traefik will run.
2. Search for Traefik and Mediawiki on [bekkerstacks](https://github.com/bekkerstacks?tab=repositories)
3. Clone the repositories
4. Deploy Traefik with `DOMAIN=mydomain.com bash traefik/deploy.sh`
5. Deploy Mediawiki with `DOMAIN=mydomain.com bash mediawiki/deploy.sh`
6. Access your deployment on `https://mediawiki.mydomain.com`

## What's in the BekkerStacks Store?

I started this project about a month ago, and at this point in time, the list includes:

* [Traefik](https://github.com/bekkerstacks/traefik) (Modern Reverse Proxy)
* [CPANG](https://github.com/bekkerstacks/monitoring-cpang) (Prometheus, Grafana, Monitoring, etc)
* [Elasticsearch](https://github.com/bekkerstacks/elasticsearch-cluster) (Elasticsearch Cluster on Docker)
* [ELK Stack](https://github.com/bekkerstacks/elk) (Elasticsearch, Logstash, Kibana)
* [MySQL](https://github.com/bekkerstacks/mysql) (MySQL on Docker)
* [Mediawiki](https://github.com/bekkerstacks/mediawiki) (Wiki on Docker)

I will be adding more as the time goes by.

## Enough talking, show me a Demo

If you don't have a Docker Swarm provisioned, you can provision one for free using:

* [BekkerStacks Swarm with Docker-in-Docker](https://github.com/bekkerstacks/docker-swarm)
* [Play with Docker](https://labs.play-with-docker.com/)

Let's do a Deployment with Traefik as our Ingress Load Balancer / Reverse Proxy that will automatically enable HTTPS on your website with a Let's Encrypt Certificate (by default, http mode only is also available)

Then deploy a Monitoring Stack, CPANG (Prometheus, cAdvisor, Node-Exporter, Grafana) to our Swarm

### Deploy Traefik

Get the sources:

```
$ git clone https://github.com/bekkerstacks/traefik
```
<p>

The compose file relies on a environment variable `DOMAIN` to map the frontend rules to Traefik.

In this case, setting `DOMAIN=myswarm.dev` will deploy Traefik with it's frontend rule as `traefik.myswarm.dev`

Set the environment variable:

```
$ export DOMAIN=myswarm.dev
```
<p>

Deploy Traefik:

```
$ export DOMAIN=localhost
$ export BSTACKS_MODE=http
$ cd traefik
$ bash deploy.sh

deploying traefik stack in http mode
Creating network public
Creating config proxy_traefik_htpasswd
Creating service proxy_traefik

traefik ui is available at:
- http://traefik.localhost
```
<p>

By default the authentication for Traefik's UI will be admin/admin, you can change the default behavior by checking out the [docs](https://github.com/bekkerstacks/traefik#basic-auth-for-dashboard)

Accessing Traefik's UI:

![](https://user-images.githubusercontent.com/567298/60389097-0fbbb600-9abc-11e9-837a-43bd0fd92ed8.png)

### Deploy a Monitoring Stack

The monitoring stack provides you with 2 options:

* HTTP/HTTPS with Clean Install
* HTTP/HTTPS with Dashboards Pre-Configured

The mode and feature will be controlled by the environment variables:

```
BSTACKS_MODE - (http/https)
BSTACKS_FEATURE - (dashboards)
```
<p>

Let's deploy the monitoring stack in http mode with dashboards pre-configured:

```
$ export BSTACKS_MODE=http
$ export BSTACKS_FEATURE=dashboards
$ git clone https://github.com/bekkerstacks/monitoring-cpang
$ cd monitoring-cpang

$ bash deploy.sh
deploying monitoring stack in http mode with dashboards pre-configured
Creating network private
Creating config mon_alertmanager_config
Creating config mon_prometheus_config
Creating config mon_prometheus_rules
Creating config mon_grafana_config_datasource
Creating config mon_grafana_dashboard_prometheus
Creating config mon_grafana_dashboard_docker
Creating config mon_grafana_dashboard_dockerprometheus
Creating config mon_grafana_dashboard_blackbox
Creating service mon_prometheus
Creating service mon_grafana
Creating service mon_cadvisor
Creating service mon_node-exporter
Creating service mon_blackbox-exporter
Creating service mon_alertmanager

Stack is available at:
- http://grafana.localhost
- http://alertmanager.localhost
- http://prometheus.localhost
```
<p>

Accessing Grafana with the default configuration (admin/admin) will ask you to change the password.

After changing your password, you will be directed to the home dashboard:

![image](https://user-images.githubusercontent.com/50801771/60390504-73ec7300-9ad8-11e9-9943-f9fc93e36ffc.png)

Docker Swarm Service Dashboard:

![image](https://user-images.githubusercontent.com/50801771/60390506-9088ab00-9ad8-11e9-9ca9-d2b570484898.png)

Docker Swarm Nodes Dashboard:

![image](https://user-images.githubusercontent.com/50801771/60390522-ca59b180-9ad8-11e9-87cb-0b620770d163.png)

## Further ideas

Further ideas will be:

* Adding more stacks to the repositories
* Add cli tools to list/deploy

## Thanks 

[![Say Thanks!](https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg)](https://saythanks.io/to/ruanbekker) [![Slack Status](https://linux-hackers-slack.herokuapp.com/badge.svg)](https://linux-hackers-slack.herokuapp.com/) [![Chat on Slack](https://img.shields.io/badge/chat-on_slack-orange.svg)](https://linux-hackers.slack.com/) [![Drone.io Build Status](https://cloud.drone.io/api/badges/ruanbekker/ruandotdev/status.svg)](https://cloud.drone.io/ruanbekker/ruandotdev) ![GitHub followers](https://img.shields.io/github/followers/ruanbekker.svg?label=Follow&style=social) ![Twitter Follow](https://img.shields.io/twitter/follow/ruanbekker.svg?style=social)

That's it for now, I would love to hear what you think about the idea, or feel free to reach out to me or share this post using the tools below:

<br>

<a href="https://twitter.com/share?url=https://ruan.dev/blog/2019/06/introducting-bekkerstacks-for-deploying-applications/&amp;text=Introducing%20Bekker%20Stacks&amp;hashtags=bekkerstacks,docker" target="_blank">
 <img src="https://simplesharebuttons.com/images/somacro/twitter.png" alt="Share to Twitter" />
</a>

<!-- StumbleUpon-->
<a href="http://www.stumbleupon.com/submit?url=https://ruan.dev/blog/2019/06/introducting-bekkerstacks-for-deploying-applications/&amp;title=Introducing Bekker Stacks" target="_blank">
  <img src="https://simplesharebuttons.com/images/somacro/stumbleupon.png" alt="StumbleUpon" />
</a>

<!-- Reddit -->
<a href="http://reddit.com/submit?url=https://ruan.dev/blog/2019/06/introducting-bekkerstacks-for-deploying-applications/&amp;title=Introducing Bekker Stacks" target="_blank">
  <img src="https://simplesharebuttons.com/images/somacro/reddit.png" alt="Reddit" />
</a>

<!-- LinkedIn -->
<a href="http://www.linkedin.com/shareArticle?mini=true&amp;url=https://ruan.dev/blog/2019/06/introducting-bekkerstacks-for-deploying-applications/" target="_blank">
 <img src="https://simplesharebuttons.com/images/somacro/linkedin.png" alt="LinkedIn" />
</a>

<!-- Email -->
<a href="mailto:?Subject=Introducing Bekker Stacks&amp;Body=Introducing%20Bekker%20Stacks%20blog%20post%20 https://ruan.dev/blog/2019/06/introducting-bekkerstacks-for-deploying-applications/">
  <img src="https://simplesharebuttons.com/images/somacro/email.png" alt="Email" />
</a>

<!-- Facebook -->
<a href="http://www.facebook.com/sharer.php?u=https://ruan.dev/blog/2019/06/introducting-bekkerstacks-for-deploying-applications/" target="_blank">
  <img src="https://simplesharebuttons.com/images/somacro/facebook.png" alt="Facebook" />
</a>


