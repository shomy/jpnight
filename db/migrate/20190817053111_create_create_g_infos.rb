class CreateCreateGInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :create_g_infos do |t|
      t.string :name
      t.string :avatar_path

      t.timestamps
    end
  end
end
