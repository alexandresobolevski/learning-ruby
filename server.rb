#!/usr/bin/ruby
require 'webrick'
include WEBrick
s = HTTPServer.new(
  :Port => 2000,
  :DocumentRoot => File.join(Dir.pwd)
)
trap("INT") { s.shutdown }
s.start
