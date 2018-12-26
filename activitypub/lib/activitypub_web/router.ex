defmodule ActivitypubWeb.Router do
  use ActivitypubWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ActivitypubWeb do
    pipe_through :api
  end
end
