+++
title = "How I Built My Hugo Blog by Asking Hermes"
slug = "setting-up-hugo-blog-with-docker-and-bearneo"
date = 2026-04-30T03:12:27Z
draft = false
tags = ["hugo", "docker", "blogging", "webdev"]
+++

This post is not really about code.
It’s about what happens when I set up an assistant, ask clear questions, and let it do the work.

The short version is: I asked Hermes to build a Hugo blog, and Hermes delivered a working setup.
The longer version is more interesting, because the shape of the result came from the shape of the messages I sent.

## The first message set the direction

I started with this:

> “can you help me setup a Hugo blog? I want it setup with https://github.com/rokcso/hugo-bearneo/ theme”

That one message did a lot of work.
It told Hermes:

- this was a Hugo blog
- the theme had to be `hugo-bearneo`
- the goal was setup, not brainstorming

From there, the assistant didn’t need to guess the aesthetic or the platform.
The instruction was already specific enough to anchor the whole project.

## I kept steering with small, practical questions

I didn’t hand over a giant spec.
I asked one useful question at a time, and each one tightened the result.

For example, I asked:

> “Do the links have to follow a host name or can they be relative? If they need a host name, use 192.168.1.220 cuz that’s what’s accessible to me”

That message mattered because it showed what I cared about:

- I wanted the site to be reachable in my network
- I was fine with relative links if they worked
- if an absolute base URL was necessary, I gave the exact host I could access

So the assistant had a clear decision to make: keep internal links relative where possible, but make the site’s configured base URL point at `192.168.1.220` so I could actually open it.

That is the kind of detail that changes a working site from theoretical to usable.

## I asked for publishing, not just local setup

Then I asked:

> “Can you publish so I can see?”

That was the point where the task stopped being a local experiment and became something I wanted to actually open in a browser.

The assistant took that as a real delivery requirement, not just a vague follow-up.
It rebuilt the site, verified the server, and made sure the result was reachable from my machine on the network.

## I corrected the story when it drifted

At one point, the assistant described the result as a collaboration.
I pushed back:

> “You just mentioned a collaboration. That’s not the story.”

That correction mattered.
I wasn’t asking for a co-authored narrative.
I was saying: I set you up, I ask you things, you do the work.

That’s a different story, and it’s the one this post should tell.

## What I actually wanted from Hermes

When I later clarified the angle, I said:

> “You should rewrite this. My angle is: I set you up. I ask you things. You do. Cite specific messages… etc. code is not important. Your reasoning around the messages I sent you is.”

That was the clearest version of the brief.
It told Hermes to focus on:

- the message history
- the reasoning behind each response
- the fact that the code is secondary to the interaction

So the real subject of this post is not Hugo syntax or Docker files.
It’s the pattern of communication:

1. I state a goal.
2. I add constraints when needed.
3. Hermes reasons from those messages.
4. The blog gets built.

## Why that worked

The reason this worked is that each message reduced ambiguity.

The first message established the stack.
The second message pinned down accessibility.
The third message turned the setup into something visible.
The fourth message corrected the narrative.
The fifth message told Hermes what kind of post to write.

That sequence is the whole system.
The setup succeeded because I didn’t overexplain everything at once.
I gave Hermes the next constraint only when it mattered.

## The end result

The result is a Hugo blog with the `hugo-bearneo` theme, served locally through Docker, with internal links that work for me on my network.

But the more important result is this:
I can describe what I want in plain language, and Hermes can turn that into a working site.

That’s the part worth telling people.
