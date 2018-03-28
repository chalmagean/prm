defmodule PRM.AccountTest do
  @moduledoc """
  Test for Account
  """
  use ExUnit.Case, async: true

  alias PRM.Contact
  alias PRM.Account

  test "a new account has no contacts" do
    list = Account.new()
    assert list.contacts == []
  end

  test "adding a new contact to the account" do
    account = Account.new()
    contact = Contact.new("John")
    new_contact_list = Account.add_contact(account, contact)
    assert new_contact_list.contacts == [contact]
  end
end
