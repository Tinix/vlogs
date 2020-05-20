defmodule Vlogs.Repo do
  use Ecto.Repo,
    otp_app: :vlogs,
    adapter: Ecto.Adapters.Postgres
end
