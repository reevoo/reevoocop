# encoding: utf-8

require 'rubocop'

module RuboCop
  class ConfigLoader
    class << self
      def configuration_file_for(_target_dir)
        File.join(File.realpath(File.dirname(__FILE__)), 'reevoocop.yml')
      end
    end
  end
end

module ReevooCop
  def with_first_parameter
    # Style A
    foo x,
        y,
        z

    # Style B
    foo(
      x,
      y,
      z
    )
  end

  def with_fixed_indentation
    # Style B
    foo(
      x,
      y,
      z
    )

    # Style C
    foo(x,
        y,
        z
    )
  end
end
