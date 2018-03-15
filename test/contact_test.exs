defmodule PRM.ContactTest do
  use ExUnit.Case, async: true

  alias PRM.Contact

  test "name can be the first name" do
    contact = %Contact{first_name: "John", last_name: "Doe", nickname: "Joe", addressing: :first_name}
    assert Contact.name(contact) == "John"
  end

  test "name can be the last name" do
    contact = %Contact{first_name: "John", last_name: "Doe", nickname: "Joe", addressing: :last_name}
    assert Contact.name(contact) == "Doe"
  end

  test "name can be the nickname" do
    contact = %Contact{first_name: "John", last_name: "Doe", nickname: "Joe", addressing: :nickname}
    assert Contact.name(contact) == "Joe"
  end

  test "name handles missspelled nickname" do
    contact = %Contact{first_name: "John", last_name: "Doe", nickname: "Joe", addressing: :nick_name}
    assert Contact.name(contact) == "Joe"
  end

  test "name defaults to first name" do
    contact = %Contact{first_name: "John", last_name: "Doe", nickname: "Joe", addressing: :foobar}
    assert Contact.name(contact) == "John"
  end
end
