require File.expand_path("./environment", __dir__)

# config valid for current version and patch releases of Capistrano
lock "~> 3.12.0"

set :application, "FelinesFancy"
set :repo_url, "git@github.com:ekr990011/cats.git"
set :rails_assets_groups, :web
set :keep_releases, 2

set :user,            Rails.application.credentials.linode[:user]
set :puma_threads,    [4, 16]
set :puma_workers,    0

# Don't change these unless you know what you're doing
set :pty,             true
set :use_sudo,        false
set :stage,           :production
set :deploy_via,      :remote_cache
set :deploy_to,       "/home/#{fetch(:user)}/#{fetch(:application)}"
set :puma_bind,       "unix://#{shared_path}/tmp/sockets/#{fetch(:application)}-puma.sock"
set :puma_state,      "#{shared_path}/tmp/pids/puma.state"
set :puma_pid,        "#{shared_path}/tmp/pids/puma.pid"
set :puma_access_log, "#{release_path}/log/puma.error.log"
set :puma_error_log,  "#{release_path}/log/puma.access.log"
set :ssh_options,     { forward_agent: true, user: fetch(:user), keys: %w(~/.ssh/id_rsa_linode) }
set :puma_preload_app, true
set :puma_worker_timeout, nil
set :puma_init_active_record, true  # Change to true if using ActiveRecord

set :nginx_use_ssl, true
set :nginx_server_name, "felinesfancy.com www.felinesfancy.com"
set :nginx_ssl_certificate, "/etc/letsencrypt/live/felinesfancy.com/fullchain.pem"
set :nginx_ssl_certificate_key, "/etc/letsencrypt/live/felinesfancy.com/privkey.pem"


# If you only want to upload files or dirs, then run the tasks accordingly:
# $ bundle exec cap <STAGE> linked_files:upload
# $ bundle exec cap <STAGE> linked_files:upload_files
# $ bundle exec cap <STAGE> linked_files:upload_dirs

set :linked_files, %w{config/database.yml config/boot.rb config/application.rb}
set :linked_files, fetch(:linked_files, []).push("config/master.key")
set :linked_dirs,  %w{bin tmp/pids tmp/cache tmp/sockets public} #maybe ./bundle? .bundle


# namespace :puma do
#   desc 'Create Directories for Puma Pids and Socket'
#   task :make_dirs do
#     on roles(:app) do
#       execute "mkdir #{shared_path}/tmp/sockets -p"
#       execute "mkdir #{shared_path}/tmp/pids -p"
#     end
#   end
#
#   before :start, :make_dirs
# end

# Setting up psql on server:
# sudo -u postgres psql
# postgres=# create database mydb;
# postgres=# create user myuser with encrypted password 'mypass';
# postgres=# grant all privileges on database mydb to myuser;

namespace :deploy do
  namespace :check do
    before :linked_files, :set_master_key do
      on roles(:app), in: :sequence, wait: 10 do
        unless test("[ -f #{shared_path}/config/master.key ]")
          upload! 'config/master.key', "#{shared_path}/config/master.key"
        end
      end
    end
  end

  desc 'Initial Deploy'
  task :initial do
    on roles(:app) do
      # before 'deploy:restart', 'puma:start'
      before 'deploy:check:linked_files', 'linked_files:upload'
      before 'deploy:check:linked_files', 'puma:config'
      before 'deploy:check:linked_files', 'puma:nginx_config'
      invoke 'deploy'
    end
  end

  # after :finishing, 'assets:precompile'
  
  # before :starting,     :check_revision
  # after 'deploy:updated', 'assets:precompile'
  # after  :finishing,    :compile_assets
  # after  :finishing,    :cleanup
  # after  :finishing,    :restart
end

# before :finishing, 'linked_files:upload'


# ps aux | grep puma    # Get puma pid
# kill -s SIGUSR2 pid   # Restart puma
# kill -s SIGTERM pid   # Stop puma
