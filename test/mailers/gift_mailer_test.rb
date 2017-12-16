require 'test_helper'

class GiftMailerTest < ActionMailer::TestCase
  test "send_gift" do
    mail = GiftMailer.send_gift
    assert_equal "Send gift", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
