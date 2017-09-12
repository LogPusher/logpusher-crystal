module LogPusher
  class Email
    @email : String

    def initialize(email : String)
      ensure_is_valid_email(email)
      @email = email
    end

    def ensure_is_valid_email(email : String) : Bool
      control = email.match(/^[_]*([a-z0-9]+(\.|_*)?)+@([a-z][a-z0-9-]+(\.|-*\.))+[a-z]{2,6}$/)
      control.nil? ? raise Exception.new("#{email} is not a valid email address.") : true
    end

    def get : String
      @email
    end
  end
end
