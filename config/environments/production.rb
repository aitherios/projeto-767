Projeto767::Application.configure do
  config.cache_classes = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.serve_static_assets = false
  config.assets.compress = true
  config.assets.compile = false
  config.assets.digest = true
  config.assets.precompile += %w( active_admin.css partials/_font.css active_admin.js modernizr.js
                                  ckeditor.js ckeditor_jquery_adapter.js ckeditor_config.js )
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
end
