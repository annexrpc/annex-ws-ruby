# external dependencies
require 'rack'
require 'faye/websocket'

module AnnexWS

  # Methods available to routes
  module Helpers
    # TODO put the request stuff here
  end

  class Base
    include Rack::Utils
    include Helpers

    attr_accessor  :app, :env, :request, :response, :params

    def initialize(app = nil)
      super()
      @app = app
      yield self if block_given?
    end

    def call(env)
      dup.call!(env)
    end

    def call!(env)
      @env      = env
      @request  = Request.new(env)
      @response = Response.new

    end

  end
end
