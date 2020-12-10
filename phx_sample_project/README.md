# SampleProject

Test Server running phoenxi channels.

To start your Phoenix server:

- Install dependencies with `mix deps.get`
- Install Node.js dependencies with `cd assets && npm install`
- Start Phoenix endpoint with `mix phx.server`
- Test `mix test`
- Run live version `mix run`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Websocket Connection

Connecting to the webserver:

- First run the project with `mix run`,
- Test connection using raw websockets on any websocket client `ws://<ip>:<port>/socket/websocket?vsn=2.0.0`
- For node.js `ws://<ip>:<port>/socket/`

## Learn more

- Official website: http://www.phoenixframework.org/
- Guides: https://hexdocs.pm/phoenix/overview.html
- Docs: https://hexdocs.pm/phoenix
- Mailing list: http://groups.google.com/group/phoenix-talk
- Source: https://github.com/phoenixframework/phoenix
