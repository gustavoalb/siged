#require 'bundler/capistrano'
set :application, "siged"
default_run_options[:pty] = true
set :use_sudo,    true
# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_to, "/var/www/siged"
#before 'deploy:update_code', 'deploy:web:disable'
#after 'deploy:restart', 'deploy:web:enable'

before 'deploy:restart' do
run "sudo ln -s #{deploy_to}/#{shared_dir}/tmp #{deploy_to}/current/public/relatorios/tmp"
run "sudo ln -s #{deploy_to}/#{shared_dir}/pontos #{deploy_to}/current/public/pontos"
run "sudo ln -s #{deploy_to}/#{shared_dir}/relatorios #{deploy_to}/current/public/relatorios"
run "cd #{deploy_to}/current && sudo bundle install --local"
end 
# If you aren't using Subversion to manage your source code, specify
# your SCM below:
set :scm, :git
set :repository, "administrador@192.168.1.250:siged.git"
set :branch, "master"
set :deploy_via, :export
set :git_shallow_clone, 1
 
set :user, 'www-data'
set :password, '@#siged$%'
set :ssh_options, { :forward_agent => true }
 
role :app, "192.168.1.250"
role :web, "192.168.1.250"
role :db,  "192.168.1.250", :primary => true

namespace :deploy do
  namespace :web do
    desc <<-DESC
        Present a maintenance page to visitors. Disables your application's web \
        interface by writing a "#{maintenance_basename}.html" file to each web server. The \
        servers must be configured to detect the presence of this file, and if \
        it is present, always display it instead of performing the request.

        Customized task allow us to render erb file. Usage:

        $ cap deploy:web:disable \\
                REASON="hardware upgrade" \\
                UNTIL="12pm Central Time"

    DESC
    task :disable do

      on_rollback { rm "#{shared_path}/system/maintenance.html" }

      require 'erb'
      deadline, reason = ENV['UNTIL'], ENV['REASON']
      maintenance = ERB.new(File.read("./app/views/layouts/maintenance.html.erb")).result(binding)

      put maintenance, "#{shared_path}/system/maintenance.html", :mode => 0644
    end
  end
end
 
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
