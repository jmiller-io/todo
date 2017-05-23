class CreateAdventures < ActiveRecord::Migration[5.0]
  def change
    create_table :adventures do |t|
      t.string :what
      t.string :where
      t.date :when
      t.string :with

      t.timestamps
    end
  end
end
