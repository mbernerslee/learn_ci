defmodule LearnCi.Repo do
  use Ecto.Repo,
    otp_app: :learn_ci,
    adapter: Ecto.Adapters.Postgres
end
