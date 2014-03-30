execute 'rake assets:precompile' do
  cwd "#{node[:deploy_to]}/current"
  user 'deploy'
  command 'bundle exec rake assets:precompile'
end
