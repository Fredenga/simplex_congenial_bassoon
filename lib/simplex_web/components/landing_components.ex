defmodule SimplexWeb.LandingComponents do
  use Phoenix.Component

  def navbar(assigns) do
    ~H"""
    <nav class="bg-red-600 flex items-center justify-center gap-10 h-28">
        <ul class="flex items-center px-6 py-2 gap-10 border border-white rounded-lg">
          <li><a href="/">About</a></li>
          <li><a href="/">Features</a></li>
          <li><a href="/">Instagram Beta</a></li>
          <li><a href="/">TikTok Alpha</a></li>
          <li><a href="/">Whatsapp</a></li>
        </ul>

      </nav>
    """
  end
end
