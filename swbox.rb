#!/usr/bin/env ruby

Signal.trap("INT") do
	puts ""
	puts "[*] EXITING ..."
	puts ""
	pb_write_log("exiting", "Core")
	exit
end

dir = File.dirname(__FILE__)

#require dir + "/lib/pb_proced_lib.rb"
require "#{dir}/pb_proced_lib.rb"
require "#{dir}/swpot.rb"

Network_pb::Honeypot_pb.new()

