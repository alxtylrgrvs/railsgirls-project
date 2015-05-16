class Kittenz < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end
