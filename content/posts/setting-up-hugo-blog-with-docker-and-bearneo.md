+++
title = "I Asked Hermes to Set Up This Blog"
slug = "setting-up-hugo-blog-with-docker-and-bearneo"
date = 2026-04-30T03:12:27Z
draft = false
tags = ["hugo", "docker", "blogging", "ai", "hermes"]
+++

This blog started as an experiment in delegation.
I wanted to see how far Hermes could get from a short sequence of real messages, without me turning the whole thing into a project plan.

I started with a simple request:

> “can you help me setup a Hugo blog? I want it setup with https://github.com/rokcso/hugo-bearneo/ theme”

That established the target.
Not “help me think about blogging.”
Not “design me a website.”
A Hugo blog, with a specific theme.

From there, the interaction stayed concrete.
I first asked whether Hermes had enough GitHub access to create the repo for me.
It checked, found that the token could authenticate but did not have the permissions needed to create a repository, and reported that back.
So I changed course and told it to work locally instead.

That part matters because it shows the shape of the workflow.
I did not need Hermes to pretend constraints were not there.
I needed it to check, adapt, and keep going.

Once the repo was local, the next useful instruction was:

> “Run Hugo through docker”

That changed the problem in an important way.
Now the job was not just to scaffold a blog.
It was to make the blog runnable in the environment we actually had.
There was no local Hugo binary, so Docker became the practical path to a working preview.

That is a good example of what I mean when I say the interesting part is not the code.
The interesting part is the reasoning around the messages.
A short instruction can still carry a lot:
use this toolchain, in this environment, in a reproducible way, and get to a result I can actually verify.

Later, I added another real constraint:

> “Do the links have to follow a host name or can they be relative? If they need a host name, use 192.168.1.220 cuz that’s what’s accessible to me”

Again, that was not a stylistic preference.
It was operational.
I was telling Hermes what “working” meant from my side.
If a URL needed to be baked in, it had to be one I could actually reach.

And then, naturally, I wanted proof rather than setup notes:

> “Can you publish so I can see?”

That is the moment where configuration stops being abstract.
A pile of files in a repo is not the same thing as something visible.
I wanted the work pushed all the way to a result I could open.

There is another Hermes feature that showed up during all this, and it is one of the reasons I find the agent interesting in the first place: it is self-documenting.
When it finishes work that looks reusable, it can save what it learned as a skill for later.
That means the system does not only complete the task in front of it.
It also tries to turn repeatable work into a reusable procedure.

In this case, after working through the setup, Hermes captured the Docker-based Hugo workflow as a skill so the approach can be reused instead of rediscovered.
That changes the character of the tool.
It is not just executing commands.
It is trying to preserve useful patterns from its own work.

That self-teaching loop is part of my angle here.
I set Hermes up.
I ask it things.
It does the work.
And when the work seems repeatable, it documents the pattern for next time.

At one point I had to correct the framing directly, because that is the part I actually wanted the post to preserve:

> “My angle is: I set you up. I ask you things. You do. Cite specific messages… etc. code is not important. Your reasoning around the messages I sent you is.”

That still feels like the most accurate description.

So this is not really a tutorial about Hugo.
It is a record of an interaction style.
I gave Hermes a target, then constraints, then a definition of success.
It checked what was possible, adapted when something was blocked, executed the work, and then saved the reusable parts of the workflow as a skill.

The result is the site you are reading.
But the more interesting result is the shape of the process:
conversation as interface,
reasoning as glue,
and self-documentation as part of the output.