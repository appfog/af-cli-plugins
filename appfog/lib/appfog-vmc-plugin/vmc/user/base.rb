module VMC
  module User
    class Base < CLI
      def validate_password!(password)
        validate_password_verified!(password)
        # validate_password_strength!(password)
      end
    end
  end
end
