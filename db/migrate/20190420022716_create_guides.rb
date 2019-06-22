class CreateGuides < ActiveRecord::Migration[5.2]
  def change
    create_table :guides do |t|
      t.string :name
      t.string :mail
      t.string :tel
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
