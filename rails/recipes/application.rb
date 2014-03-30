node[:deploy].each do |application, deploy|
  template "#{deploy[:deploy_to]}/current/config/application.yml" do
    mode '0644'
    owner deploy[:user]
    group deploy[:group]
    source "#{deploy[:deploy_to]}/current/config/application.yml.erb"
    variables(:redis_url => deploy[:redis_url])
  end
end
