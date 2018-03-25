defmodule PRM.Contact do

  @enforce_keys [:first_name]

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
