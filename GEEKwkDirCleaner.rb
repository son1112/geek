#!/usr/bin/ruby

# Cleans up the gkwk directory by filtering the image files by name and placing 
# them in respectively named directories

require 'fileutils'

HOME = Dir.home
GKWK = "#{HOME}/gkwk"
#PWD = Dir.pwd

Dir.chdir GKWK

NAMES = Dir.glob("*.png")

NAMES.each do |name| 
  simpleName = name.to_s[/[a-z]+/]
  nameNumbers = name.to_s[/\d+/]
  unless File.directory?(simpleName)
    Dir.mkdir(simpleName)
  end
  FileUtils.mv(name, simpleName)
end

