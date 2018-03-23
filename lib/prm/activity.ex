defmodule PRM.Activity do

  @enforce_keys [:date]

  defstruct [:date, :body, :subject]

  alias __MODULE__
  alias PRM.Contact

  def add(contact, activity = %Activity{}) do
    new_activities = [ activity | contact.activities ]
    %Contact{contact | activities: new_activities}
  end
end
