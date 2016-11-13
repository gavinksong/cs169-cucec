class Resource < ApplicationRecord
    belongs_to :admin
    mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
    validates :name, presence: true # Make sure the file's name is present.
end
