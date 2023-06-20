# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
Rails.application.config.assets.precompile += %w( 
                                                  admins_backoffice/welcome.js
                                                  devise/sessions.js
                                                  devise/registrations.js
                                                  users_backoffice/welcome.js
                                                  site/welcome.js
                                                  cable.js
                                                  order_details.js
                                                  orders.js
                                                  people.js
                                                  products.js
                                                )

Rails.application.config.assets.precompile += %w( 
                                                  admins_backoffice/welcome.css
                                                  devise/sessions.css
                                                  devise/registrations.css
                                                  users_backoffice/welcome.css
                                                  site/welcome.css
                                                  order_details.css
                                                  orders.css
                                                  people.css
                                                  products.css
                                                  scaffolds.css
                                                )
