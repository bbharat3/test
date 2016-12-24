require 'resolv'

actions :add, :subtract
default_action :add

attribute :name, :name_attribute => true, :kind_of => String, :required => false

#attribute :port_name       , :kind_of => String
attribute :number1     , :kind_of => Fixnum , :required => true ,:default => nil
attribute :number2 , :kind_of => Fixnum , :required => true , :default => nil

attribute :result, :kind_of => Fixnum
# attribute :snmp_enabled    , :kind_of => [ TrueClass, FalseClass ],
#             :default => false
#
# attribute :port_protocol, :kind_of => Fixnum, :default => 1, :equal_to => [1, 2]

attr_accessor :exists
