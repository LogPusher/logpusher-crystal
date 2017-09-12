require "json"
require "./spec_helper"

describe LogPusher do
  client = LogPusher::Client.new("hello@logpusher.com", "PASSWORD", "API_KEY")

  response = client.push(
    "My awesome log message",
    "myawesomesite.com",
    "E-commerce",
    "Notice",
    Time.new.to_s("%H:%M"),
    Time.new,
    "1"
  )

  it "send push" do
    response.status_code.should eq(200)
  end
end
