class ProjectIndex < Page
  self.can_have_children   = true
  self.visitable           = true
  self.allowed_child_types = [:project]
  self.archive             = true
  self.show_in_nav         = false
  self.page_type_package   = 'project'
  self.admin_template      = 'basic_page/views/admin/basic_page'
end