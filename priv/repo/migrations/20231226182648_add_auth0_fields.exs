defmodule AuthDemo.Repo.Migrations.AddAuth0Fields do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :uid, :string
      add :provider, :string
      add :first_name, :string
      add :last_name, :string
      add :is_managed_by_auth0, :boolean, default: false
      add :phone, :string
    end
  end
end
