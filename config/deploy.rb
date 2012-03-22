set :application, "siged"
default_run_options[:pty] = true
set :use_sudo,    false
# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_to, "/var/www/siged"
 
# If you aren't using Subversion to manage your source code, specify
# your SCM below:
set :scm, :git
set :repository, "administrador@192.168.1.13:siged.git"
set :branch, "master"
set :deploy_via, :export
 
set :user, 'deploy'
set :password, '@#siged$%'
set :ssh_options, { :forward_agent => true }
 
role :app, "192.168.1.13"
role :web, "192.168.1.13"
role :db,  "192.168.1.13", :primary => true
 
namespace :deploy do
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end
 
  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end
end