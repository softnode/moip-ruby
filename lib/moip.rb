# encoding: utf-8
require "rubygems"
require 'active_support/core_ext/module/attribute_accessors'
require 'active_support/deprecation'
require 'singleton'
require 'forwardable'

module MoIP

  class ValidationError < StandardError; end

  class MissingPaymentTypeError < ValidationError; end
  class MissingPayerError < ValidationError; end
  class MissingBirthdate < ValidationError; end

  class InvalidCellphone < ValidationError; end
  class InvalidExpiry < ValidationError; end
  class InvalidInstitution < ValidationError; end
  class InvalidPhone < ValidationError; end
  class InvalidReceiving < ValidationError; end
  class InvalidValue < ValidationError; end

  autoload :DirectPayment, 'moip/direct_payment'
  autoload :Client,        'moip/client'
  autoload :Config,        'moip/config'

  def self.config
    Thread.current[:moip_config] ||= MoIP::Config.new
  end

  def self.setup
    yield config if block_given?
  end

  STATUS = {1 => "authorized", 2 => "started", 3 => "printed", 4 => "completed", 5 => "canceled", 6 => "analysing"}

  class << self
    extend Forwardable
    def_delegators :config, :uri, :token, :key
  end
end
