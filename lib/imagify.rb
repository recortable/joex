require 'fileutils'
require 'time'
require 'ya2yaml'
require 'image_size'

# add "# encoding: US-ASCII" to image_size to solve 1.9 problems


module Imagify
  class App
    def initialize
      @images = []
      scan_images('static/images')
      puts "done!"
    end

    def scan_images(path)
      base = File.join('.', path)
      puts "BASE: #{base}"
      entries = []
      Dir.chdir(base) { entries = Dir['**/*.jpg'] }
      entries.each {|e| process(base, e)}
    end

    def process(base, e)
      path = File.join(base, e)
      size = ImageSize.new(File.new(path).read, ImageSize::Type::JPEG)
      puts "images['#{e}'] = {:w => #{size.w}, :h => #{size.h}}"
    end

  end
end

Imagify::App.new