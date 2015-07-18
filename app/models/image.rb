class Image < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	default_scope -> { order(timestamps: :desc) }
	validates :name, presence: true, length: {maximum: 50}
	validate  :picture_size
	validates :user_id, presence: true
	private
		def picture_size
      		if picture.size > 5.megabytes
        		errors.add(:picture, "Should be less than 5MB.")
      		end
    	end
end
