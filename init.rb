require 'redmine'

Redmine::Plugin.register :stickie_flow do
  name 'Redmine Stickie~Flow Plugin'
  author 'Peter Pflaeging'
  url 'http://www.stickieflow.net'
  author_url 'http://www.pflaeging.net'
  description "A Redmine plugin to adapt the behaviour to work as a Stickie~Flow support system"
  version '0.5.0'

  requires_redmine :version_or_higher => '0.8.7'

  menu :top_menu, :agile, {:controller => 'agile_boards', :action => 'index' },
                              :caption => :label_agile,
                              :before => :projects

  menu :top_menu, :issues, {:controller => 'issues', :action => 'new' },
                              :caption => :label_issue_new,
                              :before => :projects
end
