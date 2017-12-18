powershell_script 'Install IIS' do
  code		'Add-WindowsFeature Web-Server'


file 'C:\inetpub\wwwroot\o.txt' do
  content '<h1>Hello, world!</h1>'
end


service "w3svc" do
  action :stop
end



service "w3svc" do
  action :start
end
