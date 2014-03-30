node[:deploy].each do |application, deploy|
  execute 'rake assets:precompile' do
    cwd "#{deploy[:deploy_to]}/current"
    user 'deploy'
    command 'bundle exec rake assets:precompile'
  end
end
