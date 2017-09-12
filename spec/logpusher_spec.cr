require "./spec_helper"

describe LogPusher do
  it "valid email" do
    email = LogPusher::Email.new("hello@logpusher.com")
    email.get.should eq("hello@logpusher.com")
  end

  it "generate auth key" do
    auth_key = LogPusher::AuthKey.new(
      LogPusher::Email.new("hello@logpusher.com"), "123456"
    )
    auth_key.get_auth_key.is_a?(String).should eq(true)
  end
end
