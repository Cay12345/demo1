class CreateUser < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
    	t.string :name, null: false
    	t.string :email, null: false
    	t.string :password, null: false
    	t.integer :age, null: false
      t.timestamps
    end
  end
end