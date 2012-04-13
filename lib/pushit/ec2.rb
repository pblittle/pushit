require 'pushit'
require 'pushit/base'

module Pushit
  class Ec2 < Pushit::Base

    require 'fog'

    CREDENTIALS = {:aws_access_key_id => ENV['AWS_ACCESS_KEY_ID'], :aws_secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']}

    attr_reader :compute

    def initialize(args=[])
      super *args
      @compute = Fog::Compute.new(CREDENTIALS.merge(:provider => 'AWS'))
    end

    def addresses
      @compute.addresses.each {|address| p address.public_ip}
    end
  end
end
