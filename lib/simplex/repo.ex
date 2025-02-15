defmodule Simplex.Repo do
  use Ecto.Repo,
    otp_app: :simplex,
    adapter: Ecto.Adapters.Postgres
end
