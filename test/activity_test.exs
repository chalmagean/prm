defmodule PRM.ActivityTest do
  use ExUnit.Case, async: true

  alias PRM.Activity
  alias PRM.Contact

  test "add new activity" do
    contact = %Contact{first_name: "John"}
    activity = %Activity{date: ~D[2018-01-01]}
    contact = Activity.add(contact, activity)
    assert contact.activities == [activity]
  end
end
