# encoding: utf-8

require "rubocop"

module RuboCop
  class ConfigLoader
    class << self
      def configuration_file_for(_target_dir)
        File.join(File.realpath(File.dirname(__FILE__)), "reevoocop.yml")
      end
    end
  end
end
