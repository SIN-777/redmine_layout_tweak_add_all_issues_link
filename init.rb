require 'redmine'

Redmine::Plugin.register :redmine_layout_tweak_add_all_issues_link do
  name 'Redmine Layout Tweak Add All Issues Link plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
end

Redmine::MenuManager.map :top_menu do |menu|
  menu.push :all_issues, { :controller => 'issues', :action => 'index' }, :caption => :all_issues, :if => Proc.new { User.current.logged? }
end
