node[:deploy].each do |application, deploy|
  rails_env = deploy[:rails_env]
  execute 'rake assets:precompile' do
    cwd "#{deploy[:deploy_to]}/current"
    user 'deploy'
    command 'bundle exec rake assets:precompile'
    environment 'RAILS_ENV' => rails_env
  end
end
