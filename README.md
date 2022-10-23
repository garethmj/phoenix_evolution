# PhoenixEvolution

Having spent some time away, I wanted to do a little investigation into how Phoenix new project creation evolve over the last few versions. This is probably of interest to no-one except me.

```shell
> mix archive.install hex phx_new 1.5.0

Resolving Hex dependencies...
Dependency resolution completed:
New:
  phx_new 1.5.0
* Getting phx_new (Hex package)
All dependencies are up to date
Compiling 10 files (.ex)
Generated phx_new app
Generated archive "phx_new-1.5.0.ez" with MIX_ENV=prod
Found existing entry: /Users/gareth/.asdf/installs/elixir/1.14.0-otp-25/.mix/archives/phx_new-1.4.18
Are you sure you want to replace it with "phx_new-1.5.0.ez"? [Yn]
* creating /Users/gareth/.asdf/installs/elixir/1.14.0-otp-25/.mix/archives/phx_new-1.5.0
 
> mix phx.new phoenix_evolution

The directory /Volumes/Code/simplyanalytical/phoenix_evolution already exists. Are you sure you want to continue? [Yn]
* creating phoenix_evolution/config/config.exs
* creating phoenix_evolution/config/dev.exs
* creating phoenix_evolution/config/prod.exs
* creating phoenix_evolution/config/prod.secret.exs
* creating phoenix_evolution/config/test.exs
* creating phoenix_evolution/lib/phoenix_evolution/application.ex
* creating phoenix_evolution/lib/phoenix_evolution.ex
* creating phoenix_evolution/lib/phoenix_evolution_web/channels/user_socket.ex
* creating phoenix_evolution/lib/phoenix_evolution_web/views/error_helpers.ex
* creating phoenix_evolution/lib/phoenix_evolution_web/views/error_view.ex
* creating phoenix_evolution/lib/phoenix_evolution_web/endpoint.ex
* creating phoenix_evolution/lib/phoenix_evolution_web/router.ex
* creating phoenix_evolution/lib/phoenix_evolution_web/telemetry.ex
* creating phoenix_evolution/lib/phoenix_evolution_web.ex
* creating phoenix_evolution/mix.exs
* creating phoenix_evolution/README.md
* creating phoenix_evolution/.formatter.exs
* creating phoenix_evolution/.gitignore
* creating phoenix_evolution/test/support/channel_case.ex
* creating phoenix_evolution/test/support/conn_case.ex
* creating phoenix_evolution/test/test_helper.exs
* creating phoenix_evolution/test/phoenix_evolution_web/views/error_view_test.exs
* creating phoenix_evolution/lib/phoenix_evolution/repo.ex
* creating phoenix_evolution/priv/repo/migrations/.formatter.exs
* creating phoenix_evolution/priv/repo/seeds.exs
* creating phoenix_evolution/test/support/data_case.ex
* creating phoenix_evolution/lib/phoenix_evolution_web/controllers/page_controller.ex
* creating phoenix_evolution/lib/phoenix_evolution_web/templates/layout/app.html.eex
* creating phoenix_evolution/lib/phoenix_evolution_web/templates/page/index.html.eex
* creating phoenix_evolution/lib/phoenix_evolution_web/views/layout_view.ex
* creating phoenix_evolution/lib/phoenix_evolution_web/views/page_view.ex
* creating phoenix_evolution/test/phoenix_evolution_web/controllers/page_controller_test.exs
* creating phoenix_evolution/test/phoenix_evolution_web/views/layout_view_test.exs
* creating phoenix_evolution/test/phoenix_evolution_web/views/page_view_test.exs
* creating phoenix_evolution/lib/phoenix_evolution_web/gettext.ex
* creating phoenix_evolution/priv/gettext/en/LC_MESSAGES/errors.po
* creating phoenix_evolution/priv/gettext/errors.pot
* creating phoenix_evolution/assets/webpack.config.js
* creating phoenix_evolution/assets/.babelrc
* creating phoenix_evolution/assets/js/app.js
* creating phoenix_evolution/assets/css/app.scss
* creating phoenix_evolution/assets/js/socket.js
* creating phoenix_evolution/assets/package.json
* creating phoenix_evolution/assets/static/favicon.ico
* creating phoenix_evolution/assets/css/phoenix.css
* creating phoenix_evolution/assets/static/images/phoenix.png
* creating phoenix_evolution/assets/static/robots.txt

Fetch and install dependencies? [Yn]
* running mix deps.get
[warning] :rebar is no longer supported in Mix, falling back to :rebar3
* running mix deps.compile
* running cd assets && npm install && node node_modules/webpack/bin/webpack.js --mode development

We are almost there! The following steps are missing:

    $ cd phoenix_evolution

Then configure your database in config/dev.exs and run:

    $ mix ecto.create

Start your Phoenix app with:

    $ mix phx.server

You can also run your app inside IEx (Interactive Elixir) as:

    $ iex -S mix phx.server
```