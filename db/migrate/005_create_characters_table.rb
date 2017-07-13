class CreateCharactersTable < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.text :name
      t.text :show_id
      t.text :actor_id
    end
  end
end
