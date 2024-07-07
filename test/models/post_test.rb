require "test_helper"

class PostTest < ActiveSupport::TestCase
  test 'draft? should be true when post has not been published' do
    assert posts(:draft).draft?
  end

  test 'draft? should be false when post has been published' do
    refute posts(:published).draft?
  end

  test 'draft? should be false when post is scheduled' do
    refute posts(:scheduled).draft?
  end

  test 'published? should be true when post is pubished' do
    assert posts(:published).published?
  end

  test 'published? should be false when post is a draft' do
    refute posts(:draft).published?
  end

  test 'published? should be false when post is scheduled' do
    refute posts(:scheduled).published?
  end

  test 'scheduled? should be true when post is scheduled' do
    assert posts(:scheduled).scheduled?
  end

  test 'scheduled? should be false when post is a draft' do
    refute posts(:draft).scheduled?
  end

  test 'scheduled? should be false when post is published' do
    refute posts(:published).scheduled?
  end
end
