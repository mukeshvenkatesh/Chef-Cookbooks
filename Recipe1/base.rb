user 'deploy' do
 uid '5001'
 home '/home/deploy'
 manage_home true
 password '$1$UgDZhJCE$brPTIVErsmjA8t3Yn56sF1'
 action :create 
 
end 

package ['tree','git','ntp','wget','unzip']

user 'dojo' do 
action :remove 
end

service 'htp' do
action [:start, :enable] 
end 

file 'etc/motd' do
content '<html>This is an Mukesh property </html>'
mode '0644'
owner 'root'
group 'root'
end 
