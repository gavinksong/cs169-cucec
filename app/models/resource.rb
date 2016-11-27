require 'pathname'
class Resource < ApplicationRecord
    belongs_to :admin
    
    # file uploader
    mount_uploader :attachment, AttachmentUploader
    # validates :name, presence: true # Make sure the file's name is present. Commenting this allows video and mp3 uploads to take place. Should be refactored to enable validation
    
    # video uploader
    mount_uploader :video, VideoUploader
    # validates_presence_of :video
    # validates_integrity_of :video #resource upload logic should be refactored to allow thus validation
    # validates_processing_of :video
    
    # audio uploader
    mount_uploader :audio, AudioUploader
    
    def self.read_english
        # YYYY-MM-DD_read_english.txt
        file = "#{Rails.public_path}/text/#{Date.today.to_s}_read_english.txt"
        return Pathname.new(file).exist? ? file : "public/empty.txt"
    end
    
    def self.read_chinese
        # YYYY-MM-DD_read_chinese.txt
        file = "#{Rails.public_path}/text/#{Date.today.to_s}_read_chinese.txt"
        return Pathname.new(file).exist? ? file : "public/empty.txt"
    end
    
    def self.listen
        # YYYY-MM-DD_listen.mp3
        file_path = "#{Rails.public_path}/audios/#{Date.today.to_s}_listen.mp3"
        file_name = "#{Date.today.to_s}_listen.mp3"
        return Pathname.new(file_path).exist? ? file_name : ""
    end
    
    def self.watch
      # YYYY-MM-DD_watch.mp4
      file_path = "#{Rails.public_path}/videos/#{Date.today.to_s}_watch.mp4"
      file_name = "#{Date.today.to_s}_watch.mp4"
      return Pathname.new(file_path).exist? ? file_name : ""
    end
end
