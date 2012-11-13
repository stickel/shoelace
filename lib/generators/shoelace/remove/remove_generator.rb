require 'rails/generators'

module Shoelace
  module Generators
    class RemoveGenerator < ::Rails::Generators::Base

      desc "This generator removes all Shoelace files from your application"

      def remove_assets
        if File.exists?('app/assets/stylesheets/application.css')
          # Remove the shoelace requirement in application.css
          gsub_file 'app/assets/stylesheets/application.css', " *= require shoelace\n", ''
        end
        # Delete shoelace asset files
        Dir.foreach(File.expand_path('../../install/templates', __FILE__)) do |f|
          exceptions = ['.', '..', 'application.css']
          next if exceptions.include?(f)
          remove_file "app/assets/stylesheets/#{f}"
        end
      end
    end
  end
end
