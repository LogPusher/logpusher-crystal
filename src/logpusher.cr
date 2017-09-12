require "http/client"
require "./logpusher/*"

module LogPusher
  class Client
    def initialize(email : String, password : String, api_key : String)
      @auth_key = AuthKey.new(Email.new(email), password)
      @api_key = api_key
    end

    def push(
             log_message : String = "", source : String = "", category : String = "",
             log_type : String = "", log_time : String = "",
             created_date : Time = Time.new, event_id : String = "") : HTTP::Client::Response
      response = HTTP::Client.post_form API_URL, {
        "AuthKey"     => @auth_key.get_auth_key,
        "ApiKey"      => @api_key,
        "LogMessage"  => log_message,
        "Source"      => source,
        "Category"    => category,
        "LogType"     => log_type,
        "LogTime"     => log_time,
        "CreatedDate" => created_date.to_s(DATE_FORMAT),
        "EventId"     => event_id,
      }
      response
    end
  end
end
