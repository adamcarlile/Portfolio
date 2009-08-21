require File.join('vendor/plugins/cms-engine/app/models/image')
class Image < ActiveRecord::Base
  
  has_attached_file :image, 
    :url =>                   "/upload/images/:id/:style_:basename.:extension",
    :path => ":rails_root/public/upload/images/:id/:style_:basename.:extension",
    :styles => { 
      :thumb => "80x80#", 
      :small => "100x100#",
      :medium => "140x140",
      :portfolio => "440x200#",
      :large => "290x290",
      :tocrop => ">650x650", # this version acts as original file for loading into the flash cropping editor
      :cropped => "650x650#"  # the default cropped image until user edits crop settings which will replace just this file with new one based of the "tocrop" version
    }
  
end