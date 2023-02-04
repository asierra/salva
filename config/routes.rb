Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  if ActiveRecord::Schema.tables.include? 'schema_migrations'
    %w(base web_site bi academic department api admin librarian).each do |routes|
      load Rails.root.join("config/routes/#{routes}.rb")
    end
  end
  # [:academic, :api, :base, :bi, :department, :librarian, :web_site].each do |route|
  #   draw(route)
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
