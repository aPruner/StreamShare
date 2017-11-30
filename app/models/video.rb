class Video < Medium;
  mount_uploader :filename, VideoUploader # Tells rails to use this uploader for this model.
  validates :name, presence: true # Make sure the owner's name is present.
end
