# Support whyrun
def whyrun_supported?
  true
end

action :add do
  if @current_resource.exists
    Chef::Log.info "#{ @new_resource } already exists - nothing to do."
  else
    converge_by("add #{ @new_resource }") do
       add
    end
  end
end

action :subtract do
  if @current_resource.exists
    converge_by("subtract #{ @new_resource }") do
      subtract()
    end
  else
    Chef::Log.info "#{ @current_resource } doesn't exist - can't delete."
  end
end



def add
  number1=new_resource.number1
  number2=new_resource.number2
  result="#{number1}".to_i + "#{number2}".to_i
  print "#{result}"
  execute "adding" do
    command "echo #{result} > c:/users/knightmare/desktop/a.txt"
    action :run
  end
end

def load_current_resource
  @current_resource = Chef::Resource::LwrpAdd.new(@new_resource.name)
  @current_resource.number1(@new_resource.number1)
  @current_resource.number2(@new_resource.number2)
  @current_resource.result(@new_resource.result)

  # if port_exists?(@current_resource.port_name)
  #   # TODO: Set @current_resource port properties from registry
  #   @current_resource.exists = true
  # end
end
