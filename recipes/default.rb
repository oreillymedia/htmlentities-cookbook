latin1_url_file = "#{node["htmlentities"]["baseurl"]}/#{node["htmlentities"]["latin1_filename"]}"
special_url_file = "#{node["htmlentities"]["baseurl"]}/#{node["htmlentities"]["special_filename"]}"
symbol_url_file = "#{node["htmlentities"]["baseurl"]}/#{node["htmlentities"]["symbol_filename"]}"

latin1_install_location = "#{node['htmlentities']['install_path']}/#{node["htmlentities"]["latin1_filename"]}"
special_install_location = "#{node['htmlentities']['install_path']}/#{node["htmlentities"]["special_filename"]}"
symbol_install_location = "#{node['htmlentities']['install_path']}/#{node["htmlentities"]["symbol_filename"]}"

remote_file latin1_install_location do
  owner   'root'
  group   'root'
  mode    '0644'
  backup  false
  source  latin1_url_file
  not_if  {  ::File.exists?(latin1_install_location)  }
end

remote_file special_install_location do
  owner   'root'
  group   'root'
  mode    '0644'
  backup  false
  source  special_url_file
  not_if  {  ::File.exists?(special_install_location)  }
end

remote_file symbol_install_location do
  owner   'root'
  group   'root'
  mode    '0644'
  backup  false
  source  symbol_url_file
  not_if  {  ::File.exists?(symbol_install_location)  }
end