class Homepage < Page

  self.can_have_children = false
  
  def render(params)
    { :portfolio => Page.with_type('Project') }
  end
  
end