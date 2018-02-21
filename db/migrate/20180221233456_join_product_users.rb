class JoinProductUsers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :products
  end
end
