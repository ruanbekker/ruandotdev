+++
date = "2019-06-23T23:00:00-00:00"
title = "Example with demonstrating example usage"
tags = ["hugo"]
+++

This page serves an example of example usage using markdown

## Lists

This is an example of lists:

- List number one
- List number two

## Syntax Highlighting

Using Bash:

{{< highlight bash >}}
$ time ./script.sh
./script.sh  0.22s user 0.04s system 5% cpu 0.162 total
{{</ highlight >}}

Using Python:

{{< highlight python >}}
import random
names = ['james', 'stefan', 'ruan']
selected_name = random.choice(names)
print(selected_name)
{{</ highlight >}}

Using Golang:

{{< highlight go >}}
package main

import "fmt"

func main() {
    fmt.Println("Hello, world")
}
{{</ highlight >}}

## Images

Using an internal image:

![cool-cat](img/cool-cat.gif)

Using an external image:

![cool-cats](https://media.giphy.com/media/GwGXoeb0gm7sc/giphy.gif)



