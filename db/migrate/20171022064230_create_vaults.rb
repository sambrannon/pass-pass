class CreateVaults < ActiveRecord::Migration[5.0]
  def change
    create_table :vaults do |t|
      t.string :password
      t.string :token
      t.datetime :expires_at

      t.timestamps
    end
  end
end
