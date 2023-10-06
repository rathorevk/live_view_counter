defmodule LiveViewCounterWeb.Router do
  use LiveViewCounterWeb, :router

  # alias LiveViewCounterWeb.PageLive

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {LiveViewCounterWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LiveViewCounterWeb do
    pipe_through :browser

    live "/", PageLive
  end

  # Other scopes may use custom stacks.
  # scope "/api", LiveViewCounterWeb do
  #   pipe_through :api
  # end
end
