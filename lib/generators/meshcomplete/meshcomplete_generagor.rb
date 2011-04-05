require 'rails/generators'
require 'rails/generators/migration'     

class MeshcompleteGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  def self.source_root
    @source_root ||= File.join(File.dirname(__FILE__), 'templates')
  end

  def create_migration_file
    migration_template 'migration.rb', 'db/migrate/create_synonyms.rb'
  end
end