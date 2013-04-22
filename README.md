WIP - Peanut Gallery
====================

An open source comment system for static blogs that can be self hosted

(Note: This project is under active development and may be missing some or all of the features described below)

#### Features
 - Supports multiple blogs
 - Email notifications
 - Moderation with Spam detection

## Usage

#### Server
`git clone git@github.com:aubreyrhodes/peanut-gallery.git`
`cd peanut-gallery`
`bin/bootstrap`
`bin/start-server`
Visit 'http://localhost:5000' to create a local account.

Once you are logged in, click 'New Blog' to generate a new comment id for your blog.

#### Client
In your blog layout add `<div data-peanut-comments-id="PEANUT_COMMENT_ID"></div>`
and add `<script type="text/javascript" src="http://PEANUT_GALLERY_HOST/comments.js" />` near your footer.

Replace `PEANUT_COMMENT_ID` with the id that was generated when you created the new blog in the peanut gallery web interface
and `PEANUT_GALLERY_HOST` with the host where peanut gallery is running (localhost:5000 in development).


## Development

## Getting Setup

```bash
# Checkout the repo
git clone git@github.com:aubreyrhodes/penut-gallery.git

# Install rvm and create a gemset
rvm install 2.0.0 && rvm gemset create peanut-gallery

# Install other dependencies
brew install postgres

# Install gem dependencies
gem install bundler
bundle install

# Get the database ready
bundle exec rake db:create:all db:schema:load db:test:prepare
```

### Testing

``bundle exec rspec spec``

### Email
In development mode, the mailcatcher gem is used to capture and view mail sent by the system. Run ``bundle exec mailcatcher`` to start the server and visit http://localhost:1080 to view the mail.
