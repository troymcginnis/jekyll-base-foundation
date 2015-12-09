require "jekyll-assets"
require "font-awesome-sass"
require "sprockets"

bower_components = File.expand_path("../_assets/bower", __dir__)

%w[ foundation-sites/scss foundation-sites/js jquery/dist modernizr motion-ui ].each do |path|
  Sprockets.append_path File.join(bower_components, path)
end

