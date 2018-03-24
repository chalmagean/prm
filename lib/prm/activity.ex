defmodule PRM.Activity do

  @enforce_keys [:date]

  defstruct [:date, :body, :subject]

  alias __MODULE__
  alias PRM.Contact
end
