require 'homestead-manager/plugin'
require 'homestead-manager/version'
require 'homestead-manager/errors'

module VagrantPlugins
  module HomesteadManager
    def self.source_root
      @source_root ||= Pathname.new(File.expand_path('../../', __FILE__))
    end

    I18n.load_path << File.expand_path('locales/en.yml', source_root)
    I18n.reload!
  end
end
