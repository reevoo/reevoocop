# encoding: utf-8

require "rubocop/rake_task"

module ReevooCop
  class RakeTask < RuboCop::RakeTask
    def run_cli(verbose, options)
      require "reevoocop"
      super(verbose, options)
    end
  end
end
