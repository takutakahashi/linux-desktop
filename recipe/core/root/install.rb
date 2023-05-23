package "unzip" do
  action :install
  not_if "which unzip"
end
