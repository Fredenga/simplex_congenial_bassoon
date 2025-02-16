defmodule SimplexWeb.HomeComponents.Navbar do
  use Phoenix.LiveComponent

  def mount(socket, %{active_tab: active_tab}, _session) do
    {:ok, assign(socket, active_tab: active_tab)}
  end

  def render(assigns) do
    ~H"""
    <div>
      <%= @active_tab %>
    </div>
    """
  end
end
