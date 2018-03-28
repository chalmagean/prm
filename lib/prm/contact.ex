defmodule PRM.Contact do
  @moduledoc """
  The `Contact` is the main subject here. The purpose of the app is to manage contact related events.
  """

  @enforce_keys [:first_name]

  alias __MODULE__

  defstruct [
    first_name: nil,
    last_name: nil,
    nickname: nil,
    dob: nil,
    addressing: :first_name,
    address: nil,
    notes: nil,
    reminders: [],
    activities: []
  ]

  @doc """
  Return a new `Contact`
  """
  def new(first_name) do
    %Contact{first_name: first_name}
  end

  @doc """
  Returns the name based on addressing preference
  """
  def name(contact) do
    case contact.addressing do
      :last_name -> contact.last_name
      :nickname -> contact.nickname
      :nick_name -> contact.nickname
      _ -> contact.first_name
    end
  end
end
