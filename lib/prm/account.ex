defmodule PRM.Account do
  @moduledoc """
  Manages multiple `Contact`s.
  """

  alias __MODULE__

  defstruct [:contacts]

  def new do
    %Account{contacts: []}
  end

  def add_contact(account = %Account{}, contact) do
    new_list_of_contacts = [contact | account.contacts]
    %Account{account | contacts: new_list_of_contacts}
  end
end
