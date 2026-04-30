+++
title = "Bootstrapping a Hugo Blog with Docker and Bear Neo"
slug = "setting-up-hugo-blog-with-docker-and-bearneo"
date = 2026-04-30T03:12:27Z
draft = false
tags = ["hugo", "docker", "blogging", "webdev"]
+++

I wanted to get a personal blog online without turning the setup into a weekend project.
The result was a small Hugo site, the `hugo-bearneo` theme, and a Docker-based workflow
so I can preview the site without installing Hugo globally.

This post was also built as a collaboration: I talked to Hermes over Telegram, described
the blog I wanted, and Hermes handled the scaffolding, Docker setup, content draft,
and verification inside its own Docker-based environment.

## Why this stack?

I like a blog stack that stays out of the way:

- **Hugo** for fast static site generation
- **Bear Neo** for a clean, minimal theme
- **Docker** so the local preview environment is reproducible
- **Git** so the whole thing stays versioned from day one

The goal was simple: create a site that feels lightweight, but still gives me a nice
foundation for posts, pages, and later tweaks.

## How this was actually built

The instructions I gave were pretty direct:

- set up a Hugo blog
- use the `hugo-bearneo` theme
- run Hugo through Docker
- keep the workflow local and simple
- write a post explaining the setup itself

I sent those instructions in a Telegram DM to Hermes. Hermes was running in a Dockerized
environment, so all of the repo work, template changes, and build checks happened there.
That means this is less of a "I manually clicked everything" story and more of a
"I described the goal and the assistant delivered the implementation" story.

The nice part is that the result is still reproducible: the repo, theme, config, and
Docker workflow are all checked in, so anyone can run the same site locally.

## The basic setup

I started by creating a fresh git repository in `/opt/code/personal-blog` and adding the theme
as a submodule:

```bash
git init -b main
git submodule add https://github.com/rokcso/hugo-bearneo.git themes/hugo-bearneo
```

Then I added a Hugo config file with the theme selected and a few useful defaults:

```toml
baseURL = "http://localhost:1313/"
languageCode = "en-us"
title = "Personal Blog"
theme = "hugo-bearneo"
enableRobotsTXT = true
paginate = 10

[params]
  description = "Notes, essays, and experiments."
  toc = true
  imageZoom = true
  groupByYear = true
  postSearch = true
```

That was enough to get the site structure in place, but I still wanted a preview workflow
that didn't depend on installing Hugo directly on the machine.

## Running Hugo in Docker

The Docker part turned out to be the most useful piece.
I added a tiny `Dockerfile` and `docker-compose.yml` so the site can be built and served
with one command.

```yaml
services:
  hugo:
    build: .
    ports:
      - "1313:1313"
    command:
      - server
      - --bind
      - 0.0.0.0
      - --baseURL
      - http://localhost:1313/
      - --buildDrafts
```

Now the blog runs like this:

```bash
sudo docker compose up -d --build
sudo docker compose logs -f
```

And the preview is available at:

```text
http://localhost:1313/
```

## What I learned

A few things were worth calling out:

- The container needs a modern Hugo image; very old images can break with newer themes.
- Some theme templates assume newer Hugo behavior, so using an up-to-date image matters.
- If a theme expects author metadata, adding `[params.author]` avoids template warnings.
- The first pass doesn't need to be fancy — the important thing is getting a reliable edit/preview loop.

## The real win

The biggest improvement wasn't the theme or the layout.
It was reducing friction.

Now I can:

1. write a post,
2. save the file,
3. refresh the browser,
4. and keep moving.

That makes the blog feel like a tool I can actually keep using, instead of a project I have to
relearn every time I want to publish something.

## Next steps

From here I’ll probably add:

- an about page
- a short homepage intro
- better navigation
- a few more posts

But the core setup is done, and that's the part that usually blocks everything else.
