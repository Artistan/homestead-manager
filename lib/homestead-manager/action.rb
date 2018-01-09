require 'homestead-manager/action/update_all'
require 'homestead-manager/action/update_guest'
require 'homestead-manager/action/update_host'

module VagrantPlugins
  module HomesteadManager
    module Action
      include Vagrant::Action::Builtin

      def self.update_all
        Vagrant::Action::Builder.new.tap do |builder|
          builder.use ConfigValidate
          builder.use UpdateAll
        end
      end

      def self.update_guest
        Vagrant::Action::Builder.new.tap do |builder|
          builder.use ConfigValidate
          builder.use UpdateGuest
        end
      end

      def self.update_host
        Vagrant::Action::Builder.new.tap do |builder|
          builder.use UpdateHost
        end
      end
    end
  end
end
