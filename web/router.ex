defmodule EventDb.Router do
  use EventDb.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", EventDb do
    pipe_through :api
  end
end
