module WYSIWYG
  module Rails
    class Engine < ::Rails::Engine
      initializer 'froala.assets.precompile', group: :all do |app|
        app.config.assets.precompile += %W(
          froala_editor.min.js
          plugins/*.js
          languages/*.js
          third_party/*.js
          froala_editor.min.css
          froala_style.min.css
          plugins/*.css
          themes/*.css
          third_party/*.min.css
        )
      end
    end
  end
end
