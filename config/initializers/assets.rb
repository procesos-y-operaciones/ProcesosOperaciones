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
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( fonts.css.erb )
Rails.application.config.assets.precompile += %w( pdf.sass )
Rails.application.config.assets.precompile += %w( application.sass )

Rails.application.config.assets.precompile += %w( areas.js.coffee )
Rails.application.config.assets.precompile += %w( charges.js.coffee )
Rails.application.config.assets.precompile += %w( departaments.js.coffee )
Rails.application.config.assets.precompile += %w( cities.js.coffee )
Rails.application.config.assets.precompile += %w( contract_types.js.coffee )
Rails.application.config.assets.precompile += %w( generation_ranges.js.coffee )
Rails.application.config.assets.precompile += %w( genres.js.coffee )
Rails.application.config.assets.precompile += %w( goal_types.js.coffee )
Rails.application.config.assets.precompile += %w( goals.js.coffee )
Rails.application.config.assets.precompile += %w( identification_types.js.coffee )
Rails.application.config.assets.precompile += %w( periods.js.coffee )
Rails.application.config.assets.precompile += %w( users.js.coffee )
Rails.application.config.assets.precompile += %w( step2.js.coffee )
