# encoding: utf-8

require "bundler/gem_tasks"
require "reevoocop/rake_task"

ReevooCop::RakeTask.new(:reevoocop)

task :reevoocop_cli do
  sh "bin/reevoocop"
end

task default: [:reevoocop, :reevoocop_cli]
task build: [:reevoocop, :reevoocop_cli]
