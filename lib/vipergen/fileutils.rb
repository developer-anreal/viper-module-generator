module Vipergen
	module FileUtils
		# Return a directory with the project libraries.
	    def self.gem_libdir
	      t = ["#{File.dirname(File.expand_path($0))}/../lib/#{Vipergen::NAME}",
	           "#{Gem.dir}/gems/#{Vipergen::NAME}-#{Vipergen::VERSION}/lib/#{Vipergen::NAME}"]
	      t.each {|i| return i if File.readable?(i) }
	      raise "both paths are invalid: #{t}"
	    end
	end
end