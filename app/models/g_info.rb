class GInfo < ApplicationRecord
  belongs_to :user

  def self.create_g_infos_by(g_info_params)

  return false if g_info_params[:pucture].nil?

  GInfo.transaction do

    g_info_params[:picture].each do |g_info|
      new_g_info = GInfo.new(picture: g_info)
      return false unless new_g_info.save!
    end
  end

  true
end

end
