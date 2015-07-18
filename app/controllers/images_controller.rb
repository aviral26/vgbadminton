class ImagesController < ApplicationController
  before_action :logged_in_user

  def create
  	@image = Image.new(image_params)
  	if @image.save
  		flash[:success] = "Uploaded successfully"
  		redirect_to tournaments_path
  	else
  		flash[:danger] = "Before posting, make sure you select a picture and a caption for it!"
  		redirect_to tournaments_path
  	end
  end
private
	def image_params
		params.require(:image).permit(:name, :picture, :timestamps, :user_id)
	end
end
