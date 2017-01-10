# encoding: utf-8

require "rubocop/rake_task"

module ReevooCop
  class RakeTask < RuboCop::RakeTask
    def initialize(*args, &task_block) # rubocop:disable Metrics/AbcSize
      setup_ivars(args)

      desc "Run RuboCop" unless ::Rake.application.last_description

      task(name, *args) do |_, task_args|
        RakeFileUtils.send(:verbose, verbose) do
          yield(*[self, task_args].slice(0, task_block.arity)) if block_given?
          run_main_task(verbose)
        end
      end

      setup_subtasks(name, *args, &task_block)
    end

    def run_cli(verbose, options)
      require "reevoocop"
      super(verbose, options)
    end
  end
end
