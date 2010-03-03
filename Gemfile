# Edit this Gemfile to bundle your application's dependencies.
source :gemcutter

gem "rails", "3.0.0.beta"

# Database
gem "pg"

# Views, css and javascript
gem "haml-edge", "2.3.155", :require => 'haml'
gem "compass", "0.10.0.pre8", :git => "git://github.com/chriseppstein/compass.git", :branch => 'master'
gem "jquery_helpers", "0.0.0", :git => 'git://github.com/CodeOfficer/jquery-helpers-for-rails3.git', :branch => 'master'

# Authentication
gem "authlogic", "2.1.3", :git => "git://github.com/binarylogic/authlogic.git", :branch => 'master'

# Authorization
gem "declarative_authorization"

# Searching and tagging
gem "libxml-ruby"
gem "acts_as_sorl_reloaded", "0.0.0", :git => "git://github.com/dcrec1/acts_as_solr_reloaded.git", :branch => 'master'
gem "acts-as-taggable-on"

# Security
gem "ssl_requirement"

# Misc
gem "paperclip", "2.3.1.1", :git => "git://github.com/thoughtbot/paperclip.git", :branch => 'rails3'
gem "dom_id", "0.0.0", :git => "git://github.com/nazgum/domid_gum.git", :branch => "master", :require => 'domid_gum'
gem "will_paginate"

# Motoring
gem "rackamole"

group :development do
  # DB performance tools
  gem "bullet" # Gem to identify N+1 queries and unused eager loading 
  gem "rails_indexes", "0.0.0", :git => "git://github.com/eladmeidar/rails_indexes.git", :branch => "master" # Gem to identify potential db indexes
  gem "slim_scrooge", "1.0.5" # Gem to heavily optimize your database interactions 
end

group :test do
  gem "rspec"
  gem "rspec-rails", "2.0.0.a10", :git => "git://github.com/rspec/rspec-rails.git", :branch => "master", :require => 'spec/rails'
  gem "factory_girl", :git => "git://github.com/thoughtbot/factory_girl.git", :branch => "rails3"
  gem "webrat"
end
