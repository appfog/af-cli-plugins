module CFoundry
  class Client < BaseClient
    def self.new(*args)
      target, _ = args

      base = super(target)

      # Version 1 only
      CFoundry::V1::Client.new(*args)
    end
  end
end