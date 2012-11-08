require 'rails/generators'

module Shoelace
  module Generators
    class InstallGenerator < ::Rails::Generators::Base

      source_root File.expand_path('../templates', __FILE__)

      desc "This generator installs Shoelace into the Asset Pipeline"

      # Add options here... JS library, template engine (haml, erb), layouts (html5 boilerplate), reset (normalize or reset)

      def add_assets
        
      end
    end
  end
end
