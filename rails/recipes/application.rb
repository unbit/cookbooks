node[:deploy].each do |application, deploy|
  template "#{deploy[:deploy_to]}/shared/config/application.yml" do
    mode '0644'
    owner deploy[:user]
    group deploy[:group]
    source "application.yml.erb"
    variables(:redis_url => deploy[:redis_url], :devise_key => deploy[:devise_key], :rgts_locale => deploy[:rgts_locale], :smtp => deploy[:smtp], :riot_key => deploy[:riot_key])
  end
end
