defmodule Discuss2.Repo.Migrations.AddAndreToTopic do
  use Ecto.Migration

  def change do
  	alter table(:topics) do
  		add :andre, :string
  	end
  end
end
