require 'rails/generators'
require 'rails/generators/migration'     

class MeshcompleteGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  source_root File.expand_path('../templates', __FILE__)

  def self.next_migration_number(dirname)
    if ActiveRecord::Base.timestamped_migrations
      Time.now.utc.strftime("%Y%m%d%H%M%S")
    else
      "%.3d" % (current_migration_number(dirname) + 1)
    end
  end

  def create_subjects_migration_file
    migration_template 'create_subjects.rb', 'db/migrate/create_subjects.rb'
  end
 
  def create_synonyms_migration_file
    migration_template 'create_synonyms.rb', 'db/migrate/create_synonyms.rb'
  end
end
