require 'rubygems'
require 'bundler'

Bundler.setup

require 'rake'
require 'rake/clean'
require 'rake/testtask'

namespace :test do

  Rake::TestTask.new(:units) do |t|
    t.libs << "test/unit"
    t.test_files = FileList["test/unit/*_test.rb"]
    t.verbose = true
  end

end

desc "Run tests"
task :test => 'test:units'