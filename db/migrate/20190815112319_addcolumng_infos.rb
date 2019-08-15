class AddcolumngInfos < ActiveRecord::Migration[5.2]
  def change
    add_column :g_infos, :tel_number, :string
    add_column :g_infos, :face_picture, :string
    add_column :g_infos, :use_language_list, :text
    add_column :g_infos, :hitokoto_shoukai, :string
    add_column :g_infos, :shoukaibun, :text
    add_column :g_infos, :picture, :string
    add_column :g_infos, :picture1, :string
    add_column :g_infos, :picture2, :string
    add_column :g_infos, :picture3, :string
    add_column :g_infos, :picture4, :string

  end
end
