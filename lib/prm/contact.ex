defmodule PRM.Contact do

  @enforce_keys [:first_name]
  defstruct [:first_name, :last_name, :nickname, :dob, addressing: :first_name]

  alias __MODULE__

  def name(contact) do
    case contact.addressing do
      :last_name -> contact.last_name
      :nickname -> contact.nickname
      :nick_name -> contact.nickname
      _ -> contact.first_name
    end
  end
end
