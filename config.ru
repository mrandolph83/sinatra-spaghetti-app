require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end
# Will need to add patch/delete add-ons
use Rack::MethodOverride

# Will mount other controllers with 'use'
run ApplicationController
use UsersController
