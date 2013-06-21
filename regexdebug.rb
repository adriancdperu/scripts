#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
 
require 'time'
require 'fluent/log'
require 'fluent/config'
require 'fluent/engine'
require 'fluent/parser'
 
$log ||= Fluent::Log.new
 
# debug
log = ''
format = //
time_format = ''
 
parser = Fluent::TextParser::RegexpParser.new(format, 'time_format' => time_format)
puts parser.call(log)
