Gem::Specification.new do |s|
  s.name     = "fluiddb"
  s.version  = "0.0.1"
  s.date     = "2009-08-20"
  s.summary  = "A Ruby wrapper for the FluidDB API."
  s.email    = "evan@protest.net"
  s.homepage = "http://github.com/rabble/fluiddb/"
  s.description = "A Ruby wrapper for the FluidDB API.
                   It uses JSON format by default to minimize bandwidth usage.
                   See http://api.fluidinfo.com/fluidDB/api/*/*/* for more information about the API."
  s.authors  = ["Rabble"]
  
  s.files    = [
		"README.rdoc",
		"geoplanet.gemspec", 
		"lib/fluiddb.rb",
		"lib/fluiddb/base.rb"
	]
  
  s.add_dependency("rest-client",   [">= 0.9"])
  s.add_dependency("json", [">= 1.1.3"])
  
  s.has_rdoc = false
  s.rdoc_options = ["--main", "README.rdoc"]
end
