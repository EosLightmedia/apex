# encoding: utf-8

unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end
require 'motion-cocoapods'

lib_dir_path = File.dirname(File.expand_path(__FILE__))
Motion::Project::App.setup do |app|
  app.files.unshift(Dir.glob(File.join(lib_dir_path, "apex/**/*.rb")))
  app.pods do
    pod "GCDWebServer", "~> 3.4.1"
  end
end
