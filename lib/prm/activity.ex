defmodule PRM.Activity do
  @moduledoc """
  An `Activity` can be any interaction you've made with the `Contact`. A good example would be a meeting, or seeing a movie, etc.
  """

  @enforce_keys [:date]

  defstruct [:date, :body, :subject]

  alias __MODULE__
  alias PRM.Contact
end
