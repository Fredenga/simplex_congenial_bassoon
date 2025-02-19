defmodule SimplexWeb.LandingLive.Index do
  use SimplexWeb, :live_view
  import SimplexWeb.LandingComponents

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <.navbar />
    <div>Hello world</div>
    """
  end
end
