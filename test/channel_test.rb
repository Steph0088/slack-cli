require_relative 'test_helper'

 describe "Channel Class"do
#   # describe "constructor initialize" do
#     # it "should return an instance of channel" do
#     #   slack_id = 4
#     #   name = "Sick Rides"
#     #   topic = "Post here about your coolest cars"
#     #   member_count = 2

#     #   slack_channel = Channel.new(slack_id, name, topic, member_count)
#     #   expect(slack_channel.slack_id).must_equal slack_id
#     #   expect(slack_channel.name).must_equal name 
#     #   expect(slack_channel.topic).must_equal topic
#     #   expect(slack_channel.member_count).must_equal member_count
#     # end
#   # end

  describe "self.list method" do
    it "should return true if the list was returned" do
      VCR.use_cassette("channel-tests") do
        response = Channel.list
        expect(response["ok"]).must_equal true
      end
    end
  end
end