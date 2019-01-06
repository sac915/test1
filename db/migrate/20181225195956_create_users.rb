class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      #t.string :email,              :null => false, :default => ""
      t.change :email, :string,     :null => false, :default => "" 

      t.timestamps
    end
  end
end
