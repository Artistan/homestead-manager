require 'homestead-manager/action'

module VagrantPlugins
  module HomesteadManager
    class Plugin < Vagrant.plugin('2')
      name 'HomesteadManager'
      description <<-DESC
        This plugin manages the /etc/hosts file for the host and guest machines.
        An entry is created for each running machine using the hostname attribute.

        You can also use the hsmanager provisioner to update the hosts file.
      DESC

      config(:hsmanager) do
        require_relative 'config'
        Config
      end

      action_hook(:hsmanager, :machine_action_up) do |hook|
        hook.after(Vagrant::Action::Builtin::Provision, Action.update_all)
      end

      action_hook(:hsmanager, :machine_action_destroy) do |hook|
        hook.prepend(Action.update_all)
      end

      provisioner(:hsmanager) do
        require_relative 'provisioner'
        Provisioner
      end

      # Work-around for vagrant >= 1.5
      # It breaks without a provisioner config, so we provide a dummy one
      config(:hsmanager, :provisioner) do
        ::Vagrant::Config::V2::DummyConfig.new
      end

      command(:hsmanager) do
        require_relative 'command'
        Command
      end
    end
  end
end
