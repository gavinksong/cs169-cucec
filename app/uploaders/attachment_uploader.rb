class AttachmentUploader < CarrierWave::Uploader::Base

  # Choose what kind of storage to use for this uploader:
  storage :file

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "text/"
  end
  
  def extension_white_list
    %w(pdf doc htm html docx)
  end

end
