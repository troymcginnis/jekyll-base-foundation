# Jekyll Base Project

Just as it sounds. This is a clean base for starting Jekyll static site projects. This setup is designed more for a
standard static website (eg. landing site, company website, etc.) and less for a blogging site. This can definitely
be modified to be used as a Jekyll blog, if desired (shouldn't take too much time at all, actually). Or you can just
use plain jane, out-of-the-box [Jekyll](http://jekyllrb.com/).

I'm using...
- [Jekyll](http://jekyllrb.com/) static site generation
- [Bootstrap](http://getbootstrap.com/) CSS framework via [Bootstrap Sass](https://github.com/twbs/bootstrap-sass)
- [Jekyll Assets](https://github.com/ixti/jekyll-assets) asset pipeline
- [FontAwesome](http://fortawesome.github.io/Font-Awesome/) via [FontAwesome Sass](https://github.com/FortAwesome/font-awesome-sass)
- [S3 Website](https://github.com/laurilehmijoki/s3_website) to deploy to S3 [Amazon Web Services S3](http://aws.amazon.com/s3/).

I typically use (baked right into Jekyll)...
- [Sass (SCSS)](http://sass-lang.com/) CSS pre-processor
- [CoffeeScript](http://coffeescript.org/) for our site's Javascript

# Getting started

## 1. Prerequisites

We use [Bundler](http://bundler.io/) to manage all of the project assets, so you need to make sure you have that installed.

You can install it by running:

```
gem install bundler
```

## 2. Install Requirements

Since we Bundler, this is super easy. All of the project requirements are detailed in the project's `Gemfile` file.

Just run the following command:

```
bundle install
```

Or if you don't want to deploy to S3:

```
bundle install --without deploy
```


## 3. Go at it...

Jekyll comes shipped with a development server and we use [Jekyll Assets](https://github.com/ixti/jekyll-assets) to manage all of our assets, so... just go at it bro.

### Serve:

`serve` fires up a server at http://127.0.0.1:4000 and starts watching for file changes. Just make your changes and head over to your browser.

```
jekyll serve
```

### Build:

`build` simply compiles your assets and generates your website - no server, no watching.

```
jekyll build
```

...or watching:

```
jekyll build --watch
```

# Deploying

Deploying to S3 is easypeezy with [S3 Website](https://github.com/laurilehmijoki/s3_website).

### 1. Config

Edit the `s3_website.yml` with your S3 information.

### 2. Deploy to S3

Run the following command and all will be live:

```
s3_website push
```

# DOM-based Routing

Something note worthy:

I use DOM-based Javascript routing based on http://goo.gl/EUTi53 by Paul Irish. It's pretty neat stuff. I actually snagged it from [Roots.io](https://github.com/roots/roots/blob/master/assets/js/_main.js) who snagged the concept from Paul Irish.

# TODO

- Update project to use Gulp and Browsersync
- Link project to useful Sass repo
