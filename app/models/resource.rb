require 'pathname'
class Resource < ApplicationRecord
    belongs_to :admin
    mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
    validates :name, presence: true # Make sure the file's name is present.
    
    def self.read_english
        # YYYY-MM-DD_feature_extra
        file = "public/uploads/#{Date.today.to_s}_read_english.txt"
        return Pathname.new(file).exist? ? file : "public/empty.txt"
    end
    
    def self.read_chinese
        # YYYY-MM-DD_feature_extra
        file = "public/uploads/#{Date.today.to_s}_read_chinese.txt"
        return Pathname.new(file).exist? ? file : "public/empty.txt"
    end
end
