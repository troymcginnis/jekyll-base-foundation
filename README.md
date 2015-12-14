# Jekyll Base Project [Foundation]

This is a clean base for starting Jekyll static site projects using Zurb Foundation 6. This setup is designed more for a
standard static website (eg. landing site, company website, etc.) and less for a blogging site. This can definitely
be modified to be used as a Jekyll blog, if desired - but that wasn't my intention with this.

This is using...
- [Jekyll](http://jekyllrb.com/) static site generation
- [Foundation](http://foundation.zurb.com/) CSS framework (currently version 5 - [docs here](http://foundation.zurb.com/sites/docs/v/5.5.3/))
- [Jekyll Assets](https://github.com/ixti/jekyll-assets) asset pipeline
- [FontAwesome](http://fortawesome.github.io/Font-Awesome/) via [FontAwesome Sass](https://github.com/FortAwesome/font-awesome-sass)
- [S3 Website](https://github.com/laurilehmijoki/s3_website) to deploy to S3 [Amazon Web Services S3](http://aws.amazon.com/s3/).


# Getting started

## 1. Prerequisites

### 1.1 Bundler

We use [Bundler](http://bundler.io/) to manage a bunch of the project assets and requirements, so you need to make sure you have that installed.

You can install it by running:

```
gem install bundler
```

### 1.2 Bower

We use [Bower](http://bower.io/) to manage the rest of the project assets.

You can install it by running:

```
npm install -g bower
```


## 2. Install Requirements

Since we Bundler and Bower, this is super easy. All of the project requirements are detailed in the project's `Gemfile` and `bower.json` files.

### 2.1 Bundler

Just run the following command:

```
bundle install
```

Or if you don't want to deploy to S3:

```
bundle install --without deploy
```

### 2.2 Bower

Then install the remaining requirements with the following:

```
bower install
```


## 3. Go at it...

Jekyll comes shipped with a development server and we use [Jekyll Assets](https://github.com/ixti/jekyll-assets) to manage all of our assets, so... just go at it... bro.

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

Once you're ready to deploy, make sure to run `jekyll build` first to clean out any old or cached asset files, then follow on of the following instructions:

## Amazon S3 (Optional)

Deploying to S3 is easypeezy with [S3 Website](https://github.com/laurilehmijoki/s3_website).

### 1. Config

Edit the `s3_website.yml` with your S3 information.

### 2. Deploy to S3

Run the following command and all will be live:

```
s3_website push
```

## Manually

All of the compiled and generated files reside in the `_site` directory. Simply toss all of the files in `_site`, as is, to whatever hosting platform you're using (via FTP,
SSH, etc.) and you're done!

# DOM-based Routing

Something note worthy:

I use DOM-based Javascript routing based on http://goo.gl/EUTi53 by Paul Irish. It's pretty neat stuff. I actually snagged it from [Roots.io](https://github.com/roots/roots/blob/master/assets/js/_main.js) who snagged the concept from Paul Irish.

# TODO

- Update project to use Gulp and Browsersync
- Link project to useful Sass repo

# License

This package is licensed under the terms of the MIT license.
