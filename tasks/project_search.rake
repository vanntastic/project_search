require 'fileutils'

namespace :project_search do
  
  desc 'Install all files for project search'
  task :install do
    source = File.join(RAILS_ROOT, 'vendor', 'plugins', 'project_search', 'script', 'find')
    target = File.join(RAILS_ROOT, 'script', 'find')

    FileUtils.cp_r(source, target)
    FileUtils.chmod(0755, target)
  end
  
end
