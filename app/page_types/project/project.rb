class Project < Page
  self.page_type_package   = 'project'
  self.can_have_children   = false
  self.visitable           = true
  self.archive             = false
  self.show_in_nav         = false
end