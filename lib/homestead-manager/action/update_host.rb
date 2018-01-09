require 'homestead-manager/hosts_file/updater'
require 'homestead-manager/util'

module VagrantPlugins
  module HomesteadManager
    module Action
      class UpdateHost

        def initialize(app, env)
          @app = app
          
          global_env = env[:global_env]
          @config = Util.get_config(global_env)
          @updater = HostsFile::Updater.new(global_env, env[:provider])
          
          @logger = Log4r::Logger.new('vagrant::hsmanager::update_host')
        end

        def call(env)
          if @config.hsmanager.manage_host?
            env[:ui].info I18n.t('homestead_manager.action.update_host')
            @updater.update_host
          end

          @app.call(env)
        end
      end
    end
  end
end