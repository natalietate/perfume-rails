class CreatePerfumes < ActiveRecord::Migration[5.1]
  def change
    create_table :perfumes do |t|
      t.string :name
      t.string :maker

      t.timestamps
    end
  end
end
