class AddDetailsToGInfos < ActiveRecord::Migration[5.2]
  def change
    add_column :g_infos, :place, :string
    add_column :g_infos, :Roppongi_area, :string
    add_column :g_infos, :Shinjyuku_area, :string
    add_column :g_infos, :Shibuya_area, :string
    add_column :g_infos, :Ginza_area, :string
    add_column :g_infos, :Akihabara_area, :string
    add_column :g_infos, :Others_area, :string
  end
end
