require 'redmine'

Redmine::Plugin.register :redmine_layout_tweak_add_all_issues_link do
  name 'Redmine Layout Tweak Add All Issues Link plugin'
  author 'Shingo Sekiguchi'
  description 'Add link to "All Issues" to top menu.'
  version '0.0.1'
  url 'https://github.com/SIN-777/redmine_layout_tweak_add_all_issues_link'
  author_url ''
end

Redmine::MenuManager.map :top_menu do |menu|
  menu.push :all_issues, { :controller => 'issues', :action => 'index' }, :caption => :all_issues, :if => Proc.new { User.current.logged? }
end
