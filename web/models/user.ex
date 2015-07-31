defmodule PhoenixCrud.User do
  use PhoenixCrud.Web, :model

  schema "users" do
    field :name, :string
    field :email, :string
    field :bio, :string
    field :age, :integer

    timestamps
  end

  @required_fields ~w(name email bio age)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    #|> validate_length(:age, min: 2)
    #|> validate_length(:age, max: 140)
    #|> validate_format(:email, ~r/@/)
  end
end
