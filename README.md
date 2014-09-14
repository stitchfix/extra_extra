# release_notes - Include a release notes page in your app

Release Notes are useful for internal applications where users might like a list of what changed when.  This is a Rails Engine
that allows you to manage a file `RELEASE_NOTES.md` at the root of your app and have it served-up as `/release_notes` to your
app's users.

## Install

In your `Gemfile`:

```ruby
gem 'release_notes'
```

After a `bundle install`, set it up in `config/routes.rb`:

```ruby
mount ReleaseNotes::Engine, at: "/release_notes"
```

Finally, create a `RELEASE_NOTES.md` file at the root of your app's directory:

```markdown
# Sep 14, 2014

* Created a release notes engine!
```

When you restart your app, you can now visit `/release_notes` and see your notes rendered in HTML.

## Controlling Look and Feel

You have some limited ability to customize how the release notes are rendered.

### Layout

By default, the release notes are rendered inside your app's main application layout.  This may not be what you want if your
application layout uses any app-specific path helpers or other methods provided by your app.

In this case, we recommend you create a layout just for your release notes and set it in the initializer

Create `app/views/layouts/release_notes.html.erb`:

```erb
<!DOCTYPE html>
<html>
  <body data-no-turbolink ontouchstart="">
    <section class="content" role="main">
      <%= yield %>
    </section>
  </body>
</html>
```

Then set this up in `config/initializers/release_notes.rb`:

```ruby
ReleaseNotes.layout_name = 'release_notes'
```

### CSS

This engine provides no CSS or other look and feel.  By using a layout in your application, your styles will be used.  You can
further customize the release notes by taking advantage of the generated HTML.

* Everything is wrapped in a `<section class='release-notes'>...</section>`
* The title "Release Notes" is the only `<h1>` rendered
* Markdown titles are rendered  as "plus 1", meaning headers that would normally be an `<h1>` are rendered as `<h2>` and so on.
* Each `<h2>` (which corresponds to major sections in your `RELEASE_NOTES.md` file) gets an anchor for deep linking.
