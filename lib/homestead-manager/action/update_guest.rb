require 'homestead-manager/hosts_file/updater'
require 'homestead-manager/util'

module VagrantPlugins
  module HomesteadManager
    module Action
      class UpdateGuest

        def initialize(app, env)
          @app = app
          global_env = env[:global_env]
          @config = Util.get_config(global_env)
          @machine = env[:machine]
          @updater = HostsFile::Updater.new(@machine.env, env[:provider])
          @logger = Log4r::Logger.new('vagrant::hsmanager::update_guest')
        end

        def call(env)
          if @config.hsmanager.manage_guest?
            env[:ui].info I18n.t('homestead_manager.action.update_guest', {
              :name => @machine.name
            })
            @updater.update_guest(@machine)

            @app.call(env)
          end
        end
      end
    end
  end
end
