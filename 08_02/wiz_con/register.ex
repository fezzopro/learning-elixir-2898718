defmodule Wizard.Con.Register do
  @moduledoc """
  Registration functions for the wizard convention.
  """
  @specialties ["Elements", "Incantations", "Abjuration", "Enchantment"]
  alias Wizard.Con.Guest
  alias Wizard.Con.EventSchedule, as: Schedule

  @doc """
  Create a new WizCon registration. Take a name, create a guest, and return a schedule.
  """
  def new(name \\ "Anonymous") do
    Guest.new(name)
    |> Schedule.display()
  end
end