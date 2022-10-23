# PhoenixEvolution

Having spent some time away, I wanted to do a little investigation into how Phoenix new project creation evolve over the last few versions. This is probably of interest to no-one except me.

```shell

> mix archive.install hex phx_new 1.6.0

Resolving Hex dependencies...
Dependency resolution completed:
New:
  phx_new 1.6.0
* Getting phx_new (Hex package)
All dependencies are up to date
Compiling 11 files (.ex)
Generated phx_new app
Generated archive "phx_new-1.6.0.ez" with MIX_ENV=prod
Found existing entry: /Users/gareth/.asdf/installs/elixir/1.14.0-otp-25/.mix/archives/phx_new-1.5.0
Are you sure you want to replace it with "phx_new-1.6.0.ez"? [Yn]
* creating /Users/gareth/.asdf/installs/elixir/1.14.0-otp-25/.mix/archives/phx_new-1.6.0

> mix phx.new phoenix_evolution

The directory /Volumes/Code/simplyanalytical/phoenix_evolution already exists. Are you sure you want to continue? [Yn]
* creating phoenix_evolution/config/config.exs
* creating phoenix_evolution/config/dev.exs
* creating phoenix_evolution/config/prod.exs
* creating phoenix_evolution/config/runtime.exs
* creating phoenix_evolution/config/test.exs
* creating phoenix_evolution/lib/phoenix_evolution/application.ex
* creating phoenix_evolution/lib/phoenix_evolution.ex
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
* creating phoenix_evolution/lib/phoenix_evolution_web/views/page_view.ex
* creating phoenix_evolution/test/phoenix_evolution_web/controllers/page_controller_test.exs
* creating phoenix_evolution/test/phoenix_evolution_web/views/page_view_test.exs
* creating phoenix_evolution/assets/vendor/topbar.js
* creating phoenix_evolution/lib/phoenix_evolution_web/templates/layout/root.html.heex
* creating phoenix_evolution/lib/phoenix_evolution_web/templates/layout/app.html.heex
* creating phoenix_evolution/lib/phoenix_evolution_web/templates/layout/live.html.heex
* creating phoenix_evolution/lib/phoenix_evolution_web/views/layout_view.ex
* creating phoenix_evolution/lib/phoenix_evolution_web/templates/page/index.html.heex
* creating phoenix_evolution/test/phoenix_evolution_web/views/layout_view_test.exs
* creating phoenix_evolution/lib/phoenix_evolution/mailer.ex
* creating phoenix_evolution/lib/phoenix_evolution_web/gettext.ex
* creating phoenix_evolution/priv/gettext/en/LC_MESSAGES/errors.po
* creating phoenix_evolution/priv/gettext/errors.pot
* creating phoenix_evolution/assets/css/phoenix.css
* creating phoenix_evolution/assets/css/app.css
* creating phoenix_evolution/assets/js/app.js
* creating phoenix_evolution/priv/static/robots.txt
* creating phoenix_evolution/priv/static/images/phoenix.png
* creating phoenix_evolution/priv/static/favicon.ico

Fetch and install dependencies? [Yn] n

We are almost there! The following steps are missing:

    $ cd phoenix_evolution
    $ mix deps.get

Then configure your database in config/dev.exs and run:

    $ mix ecto.create

Start your Phoenix app with:

    $ mix phx.server

You can also run your app inside IEx (Interactive Elixir) as:

    $ iex -S mix phx.server

> cd phoenix_evolution/
> mix deps.get

** (CompileError) config/config.exs:51: undefined function config_env/0
    (stdlib 3.13) lists.erl:1354: :lists.mapfoldl/3
    (elixir 1.10.3) expanding macro: Kernel.to_string/1
    config/config.exs:51: (file)
    (elixir 1.10.3) expanding macro: Config.import_config/1
    config/config.exs:51: (file)

> asdf list all elixir | grep 1.12.2

1.12.2
1.12.2-otp-22
1.12.2-otp-23
1.12.2-otp-24

> asdf install elixir 1.12.2-otp-23

==> Checking whether specified Elixir release exists...
==> Downloading 1.12.2-otp-23 to /var/folders/99/tsnk9jnx3hv2t5v0yvkwqfwh0000gn/T//elixir-precompiled-1.12.2-otp-23.zip
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 5887k  100 5887k    0     0  2258k      0  0:00:02  0:00:02 --:--:-- 2261k
==> Copying release into place

> asdf local elixir 1.12.2-otp-23
> mix deps.get

Could not find Hex, which is needed to build dependency :phoenix
Shall I install Hex? (if running non-interactively, use "mix local.hex --force") [Yn]
* creating /Users/gareth/.asdf/installs/elixir/1.12.2-otp-23/.mix/archives/hex-1.0.1
Resolving Hex dependencies...
Dependency resolution completed:
New:
  castore 0.1.18
  connection 1.1.0
  cowboy 2.9.0
  cowboy_telemetry 0.4.0
  cowlib 2.11.0
  db_connection 2.4.2
  decimal 2.0.0
  ecto 3.9.1
  ecto_sql 3.9.0
  esbuild 0.5.0
  file_system 0.2.10
  floki 0.33.1
  gettext 0.20.0
  html_entities 0.5.2
  jason 1.4.0
  mime 2.0.3
  phoenix 1.6.0
  phoenix_ecto 4.4.0
  phoenix_html 3.2.0
  phoenix_live_dashboard 0.5.3
  phoenix_live_reload 1.3.3
  phoenix_live_view 0.16.4
  phoenix_pubsub 2.1.1
  phoenix_view 1.1.2
  plug 1.13.6
  plug_cowboy 2.5.2
  plug_crypto 1.2.3
  postgrex 0.16.5
  ranch 1.8.0
  swoosh 1.8.1
  telemetry 1.1.0
  telemetry_metrics 0.6.1
  telemetry_poller 1.0.0
* Getting phoenix (Hex package)
* Getting phoenix_ecto (Hex package)
* Getting ecto_sql (Hex package)
* Getting postgrex (Hex package)
* Getting phoenix_html (Hex package)
* Getting phoenix_live_reload (Hex package)
* Getting phoenix_live_view (Hex package)
* Getting floki (Hex package)
* Getting phoenix_live_dashboard (Hex package)
* Getting esbuild (Hex package)
* Getting swoosh (Hex package)
* Getting telemetry_metrics (Hex package)
* Getting telemetry_poller (Hex package)
* Getting gettext (Hex package)
* Getting jason (Hex package)
* Getting plug_cowboy (Hex package)
* Getting cowboy (Hex package)
* Getting cowboy_telemetry (Hex package)
* Getting plug (Hex package)
* Getting mime (Hex package)
* Getting plug_crypto (Hex package)
* Getting telemetry (Hex package)
* Getting cowlib (Hex package)
* Getting ranch (Hex package)
* Getting castore (Hex package)
* Getting html_entities (Hex package)
* Getting file_system (Hex package)
* Getting connection (Hex package)
* Getting db_connection (Hex package)
* Getting decimal (Hex package)
* Getting ecto (Hex package)
* Getting phoenix_pubsub (Hex package)
* Getting phoenix_view (Hex package)
You have added/upgraded packages you could sponsor, run `mix hex.sponsor` to learn more

> mix deps.compile

17:38:27.378 [info]  Compiling file system watcher for Mac...

17:38:28.306 [info]  Done.
==> file_system
Compiling 7 files (.ex)
Generated file_system app
==> connection
Compiling 1 file (.ex)
Generated connection app
==> gettext
Compiling 1 file (.yrl)
Compiling 1 file (.erl)
Compiling 21 files (.ex)
Generated gettext app
==> phoenix_evolution
Could not find "rebar3", which is needed to build dependency :ranch
I can install a local copy which is just used by Mix
Shall I install rebar3? (if running non-interactively, use "mix local.rebar --force") [Yn]
* creating /Users/gareth/.asdf/installs/elixir/1.12.2-otp-23/.mix/rebar
* creating /Users/gareth/.asdf/installs/elixir/1.12.2-otp-23/.mix/rebar3
===> Analyzing applications...
===> Compiling ranch
===> Analyzing applications...
===> Compiling telemetry
==> telemetry_metrics
Compiling 7 files (.ex)
Generated telemetry_metrics app
===> Analyzing applications...
===> Compiling telemetry_poller
==> decimal
Compiling 4 files (.ex)
Generated decimal app
==> jason
Compiling 10 files (.ex)
Generated jason app
==> castore
Compiling 1 file (.ex)
Generated castore app
==> esbuild
Compiling 3 files (.ex)
Generated esbuild app
==> db_connection
Compiling 14 files (.ex)
Generated db_connection app
==> ecto
Compiling 56 files (.ex)
Generated ecto app
==> phoenix_pubsub
Compiling 11 files (.ex)
Generated phoenix_pubsub app
===> Analyzing applications...
===> Compiling cowlib
===> Analyzing applications...
===> Compiling cowboy
===> Analyzing applications...
===> Compiling cowboy_telemetry
==> mime
Compiling 1 file (.ex)
Generated mime app
==> postgrex
Compiling 64 files (.ex)
Generated postgrex app
==> ecto_sql
Compiling 25 files (.ex)
Generated ecto_sql app
==> plug_crypto
Compiling 5 files (.ex)
Generated plug_crypto app
==> plug
Compiling 1 file (.erl)
Compiling 41 files (.ex)
warning: System.stacktrace/0 is deprecated. Use __STACKTRACE__ instead
  lib/plug/conn/wrapper_error.ex:26: Plug.Conn.WrapperError.reraise/3

Generated plug app
==> phoenix_html
Compiling 8 files (.ex)
Generated phoenix_html app
==> phoenix_view
Compiling 5 files (.ex)
Generated phoenix_view app
==> plug_cowboy
Compiling 5 files (.ex)
Generated plug_cowboy app
==> phoenix
Compiling 67 files (.ex)
Generated phoenix app
==> phoenix_live_reload
Compiling 4 files (.ex)
Generated phoenix_live_reload app
==> phoenix_live_view
Compiling 28 files (.ex)
Generated phoenix_live_view app
==> phoenix_live_dashboard
Compiling 40 files (.ex)
warning: Phoenix.HTML.sigil_E/2 is deprecated. use the ~H sigil instead
  lib/phoenix/live_dashboard/pages/home_page.ex:29: Phoenix.LiveDashboard.HomePage

warning: Phoenix.HTML.sigil_E/2 is deprecated. use the ~H sigil instead
  lib/phoenix/live_dashboard/pages/os_mon_page.ex:176: Phoenix.LiveDashboard.OSMonPage.cpu_hint/1

Generated phoenix_live_dashboard app
==> swoosh
Compiling 40 files (.ex)
Generated swoosh app
==> phoenix_ecto
Compiling 7 files (.ex)
Generated phoenix_ecto app
```