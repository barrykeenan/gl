# Use the app.rb file to load Ruby code, modify or extend the models, or
# do whatever else you fancy when the theme is loaded.

# Fix encoding bug for fancy characters - only an issue on the server
# Encoding.default_internal = 'utf-8' 
Encoding.default_external = 'utf-8'

module Nesta
  class App
	
		log_file = File.open('log/nesta_log', 'a+')
		# Don't buffer writes to this file. Recommended for development.
		log_file.sync = true
		LOGGER = Logger.new(log_file)
		LOGGER.level = Logger::DEBUG
		
		
	
    # Uncomment the Rack::Static line below if your theme has assets
    # (i.e images or JavaScript).
    #
    # Put your assets in themes/gl/public/gl.
    #
    # use Rack::Static, :urls => ["/gl"], :root => "themes/gl/public"

    helpers do
      # Add new helpers here.
    end

    # Add new routes here.

		before do
		  LOGGER.info "PATH: #{request.path_info}"
		end
  end
end
