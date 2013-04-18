module CFoundry
  class Client < BaseClient
    def self.new(*args)
      target, _ = args

      base = super(target)

      # case base.info[:version]
      # when 2
      #   CFoundry::V2::Client.new(*args)
      # else
        CFoundry::V1::Client.new(*args)
      # end
    end
  end
end