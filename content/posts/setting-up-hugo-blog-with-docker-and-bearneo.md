+++
title = "How I Built My Hugo Blog by Asking Hermes"
slug = "setting-up-hugo-blog-with-docker-and-bearneo"
date = 2026-04-30T03:12:27Z
draft = false
tags = ["hugo", "docker", "blogging", "webdev"]
+++

I’ve been experimenting with Hermes for a few days now, and this blog is one of the things I asked it to build.
I wanted a blog, I wanted it to be simple, and I wanted to see it working without turning the setup into its own project.
So I set Hermes up, asked for what I wanted, and let it reason from there.

The first message was deliberately narrow:

> “can you help me setup a Hugo blog? I want it setup with https://github.com/rokcso/hugo-bearneo/ theme”

That message mattered because it set the shape of everything that followed.
It wasn’t just “help me make a website.”
It was Hugo, and it was specifically the `hugo-bearneo` theme.
That gave Hermes enough context to stop guessing and start building.

I also didn’t want the story to become a pile of implementation details.
So the next thing I cared about was the environment.
When the setup started feeling like it needed to be reproducible, Docker came up naturally.
I didn’t bring it up because I love containers.
I brought it up because I wanted the site to run the same way every time, without depending on a global Hugo install or some hidden machine state.

That’s the kind of thing I asked Hermes to think through for me.
Not just “make the files,” but “what’s the safest way to make this actually usable?”

The other early decision was about access.
I asked:

> “Do the links have to follow a host name or can they be relative? If they need a host name, use 192.168.1.220 cuz that’s what’s accessible to me”

That was one of the most useful messages in the whole exchange, because it told Hermes what kind of reality it had to fit into.
I wasn’t looking for a perfect public deployment.
I just needed something I could reach from my network.
If relative links were enough, great.
If a base URL mattered, it had to be the one I could actually open.

That’s really the pattern of the whole setup.
I kept sending small messages that clarified the problem.
Hermes kept reasoning from them.
And the site moved forward.

Later I asked:

> “Can you publish so I can see?”

That was my way of shifting the job from “local experiment” to “show me the thing.”
At that point, it wasn’t enough to have a configuration in a file.
The result had to be reachable, visible, and working.

There were also moments when I had to correct the story itself.
At one point, Hermes described the work as a collaboration, and I pushed back.
That wasn’t the angle I wanted.
My angle was simpler and more honest:
I set Hermes up.
I ask it things.
It does the work.

That became especially important when I told Hermes what the post should focus on:

> “My angle is: I set you up. I ask you things. You do. Cite specific messages… etc. code is not important. Your reasoning around the messages I sent you is.”

That’s basically the whole point of the article.
The blog itself is the output, but the interesting part is the way the output emerged from the conversation.
The code is the evidence.
The reasoning is the story.

And the reasoning really did matter.
Hermes had to infer why Docker showed up in the first place.
It had to understand that I was asking for a setup that would be stable and easy to rerun.
It had to notice that the host name mattered because I needed something reachable on my LAN.
It had to decide when relative links were enough and when a configured base URL was still necessary.
Those aren’t code problems so much as interpretation problems.

That’s what I wanted from the setup.
Not just execution, but judgment.

So if I tell the story now, it’s not “I built a Hugo blog step by step.”
It’s this:
I gave Hermes a goal, tightened the constraints as I went, and let it reason from the actual messages I sent.
The result is a blog I can use, but also a record of that back-and-forth.

That feels more true than a tutorial ever would.

And honestly, that’s the part worth remembering.
