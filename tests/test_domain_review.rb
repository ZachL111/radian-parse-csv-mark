require 'minitest/autorun'
require 'domain_review'

class DomainReviewTest < Minitest::Test
  def test_domain_lane
    item = RadianParseCsvMark::DomainReview.new(signal: 57, slack: 52, drag: 21, confidence: 45)
    assert_equal 148, RadianParseCsvMark.domain_review_score(item)
    assert_equal "ship", RadianParseCsvMark.domain_review_lane(item)
  end
end
