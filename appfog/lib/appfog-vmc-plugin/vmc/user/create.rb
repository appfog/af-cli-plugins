module VMC::User
  class Create < Base

    # Allows creation of users without logging in
    def precondition; end

  end
end