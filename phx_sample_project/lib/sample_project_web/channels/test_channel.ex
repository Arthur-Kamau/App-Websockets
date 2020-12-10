defmodule SampleProjectWeb.TestChannel do
  use SampleProjectWeb, :channel
  require Logger

  def join("test:lobby", payload, socket) do
    if authorized?(payload) do
      Process.flag(:trap_exit, true)
      :timer.send_interval(5000, :ping)
      send(self, {:after_join, payload})
      {:ok, socket}
    else
      {:error, %{reason: "unauthorized"}}
    end
  end

  def join("test:" <> _, _, _) do
    {:error, %{reason: "unauthorized"}}
  end

  def handle_info({:after_join, msg}, socket) do
    push(socket, "join", %{status: "connected"})
    broadcast(socket, "join", %{update: "joined 'test:lobby' ok!"})
    {:noreply, socket}
  end

  def handle_info(:ping, socket) do
    push(socket, "new:msg", %{user: "SYSTEM", body: "ping"})
    {:noreply, socket}
  end

  def handle_info({:EXIT, _, reason}, socket) do
    terminate(reason, socket)
    {:stop, reason, socket}
  end

  def terminate(reason, _socket) do
    Logger.debug("> connection terminated #{inspect(reason)}")
  end

  # Channels can be used in a request/response fashion
  # by sending replies to requests from the client
  def handle_in("ping", payload, socket) do
    {:reply, {:ok, payload}, socket}
  end

  # It is also common to receive messages from the client and
  # broadcast to everyone in the current topic (test:lobby).
  def handle_in("shout", payload, socket) do
    broadcast(socket, "shout", payload)
    {:noreply, socket}
  end

  # Add authorization logic here as required.
  defp authorized?(_payload) do
    true
  end
end
