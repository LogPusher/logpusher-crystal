require "base64"
require "digest/md5"

module LogPusher
  class AuthKey
    @email : String
    @hashed_password : String

    def initialize(email : Email, password : String)
      @email = email.get
      @hashed_password = Digest::MD5.hexdigest(password)
    end

    def get_auth_key : String
      auth_key = create_auth_key_string
      Base64.strict_encode(auth_key)
    end

    private def create_auth_key_string : String
      "#{@email}#{SEPERATOR}#{@hashed_password}#{SEPERATOR}#{Time.new.to_s(DATE_FORMAT)}"
    end
  end
end
