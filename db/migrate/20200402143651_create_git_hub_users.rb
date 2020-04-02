class CreateGitHubUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :git_hub_users do |t|
      t.string :username
      t.string :favourite_language

      t.timestamps
    end
  end
end
