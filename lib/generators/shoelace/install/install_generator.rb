require 'rails/generators'

module Shoelace
  module Generators
    class InstallGenerator < ::Rails::Generators::Base

      desc "This generator installs Shoelace into the Asset Pipeline"

      source_root File.expand_path('../templates', __FILE__)

      # Add options here... JS library, template engine (haml, erb), layouts (html5 boilerplate), reset (normalize or reset)

      def add_assets
        if File.exists?('app/assets/stylesheets/application.css')
          # Make sure the CSS will be included in the pipeline
          stylesheet = File.read('app/assets/stylesheets/application.css')
          insert_into_file 'app/assets/stylesheets/application.css', " *= require shoelace\n", :before => "\s*= require_self\n" unless stylesheet.match(/require shoelace/)
        else
          # Copy the application.css file
          copy_file 'application.css', 'app/assets/stylesheets/application.css'
        end
        # Copy shoelace asset files
        Dir.foreach(File.expand_path('../templates', __FILE__)) do |f|
          exceptions = ['.', '..', 'application.css']
          next if exceptions.include?(f)
          copy_file f, "app/assets/stylesheets/#{f}"
        end
      end
    end
  end
end
