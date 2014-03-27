class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :hashword
      t.string :username
    end
  end
end
