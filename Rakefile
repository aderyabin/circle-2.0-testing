# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

desc 'test rake task'
task :test do; end

desc 'command to run inside circleci'
task :circle do
  puts "IT WORKS"
end


task default: :test