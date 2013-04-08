require "beardley/barcode/version"
require 'pathname'

module Beardley
  module Barcode

    def self.classpath
      return Dir[Pathname.new(__FILE__).dirname.join("..", "..", "vendor", "java", "*.jar")].collect{ |path| Pathname.new(path) }
    end

  end
end
