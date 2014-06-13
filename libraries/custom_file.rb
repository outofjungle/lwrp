require 'chef/provider/file'
require 'chef/resource/file'

class Chef::Resource::CustomFile < Chef::Resource::File
  provides :custom_file, :on_platforms => :all

  def initialize(name, run_context=nil)
    super
    @provider = Chef::Provider::CustomFile
    @link = nil
  end

  def link(arg=nil)
    set_or_return(
      :link,
      arg,
      :kind_of => String
    )
  end
end

class Chef::Provider::CustomFile < Chef::Provider::File
  def initialize(new_resource, run_context)
    super
  end

  def action_create
    super
    path = @new_resource.path
    link @new_resource.link do
      to path
    end
  end
end
