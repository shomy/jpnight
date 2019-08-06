class CreateGInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :g_infos do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :age
      t.string :sex
      t.string :email

      t.timestamps
    end
  end
end
