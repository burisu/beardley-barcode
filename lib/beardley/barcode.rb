require "beardley/barcode/version"
require 'pathname'

module Beardley
  module Barcode

    def self.classpath
      return Dir[File.join(__FILE__, "..", "..", "vendor", "java", "*.jar")].collect{ |path|
        Pathname.new(path)
      }
    end

  end
end
