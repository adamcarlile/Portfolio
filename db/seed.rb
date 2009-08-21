[User,Page,Image,FileUpload].each do |klass|
  klass.destroy_all
end

user = User.new({
  :firstname => 'Your',
  :lastname => 'Name',
  :email => "youremail@example.com",
  :password => 'password',
  :password_confirmation => 'password'
})
user.admin = true
user.save!
 
global_nav = Factory(:top_level_folder)
Factory(:top_level_folder, :title => 'Footer nav')
Factory(:top_level_folder, :title => 'Other pages')

# Homepage
Factory(:page, :type => 'Homepage', :state => 'published', :position => 1, :parent => global_nav, :title => 'Welcome to our site', :slug_path => 'home', :nav_title => 'Home')

# Folder with basic sub pages
about_us = Factory(:folder, :state => 'published', :position => 2, :parent => global_nav, :title => "About us")
Factory(:page, :state => 'published', :parent => about_us, :title => 'Services')
Factory(:page, :state => 'published', :parent => about_us, :title => 'Company')


news = Factory(:page, :type => "NewsIndex", :state => 'published', :position => 2, :parent => global_nav, :title => "News")
10.times do |n|
  Factory(:page, :type => "NewsItem", :publish_from => (n+2).weeks.ago, :state => 'published', :position => (n+1), :parent => news, :title => "Article #{n+1}")
end

Factory(:page, :type => "ContactForm", :state => 'published', :parent => global_nav, :title => 'Contact us')

Page.all.each &:save