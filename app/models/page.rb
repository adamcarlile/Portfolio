require File.join('vendor/plugins/cms-engine/app/models/page')
class Page < ActiveRecord::Base
  acts_as_taggable
  
  self.allowed_child_types = [:basic_page,:folder,:news_index,:project_index,:hyperlink,:redirect]
end