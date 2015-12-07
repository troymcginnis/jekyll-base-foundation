require "jekyll-assets"

require "font-awesome-sass"
require "sprockets"

bower_components = File.expand_path("../_assets/bower", __dir__)

%w[ foundation/scss foundation/js jquery/dist modernizr ].each do |path|
  Sprockets.append_path File.join(bower_components, path)
end

