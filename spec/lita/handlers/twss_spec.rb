require "spec_helper"

describe Lita::Handlers::Twss, lita_handler: true do
  it "replies TWSS when appropriate" do
    send_message("well hurry up, you're not going fast enough")
    expect(replies.last).to eq("That's what she said!")
  end

  it "stays silent when appropriate" do
    send_message("hey, did you resolve that ticket?")
    expect(replies.last).to be_nil
  end
end
