require "test_helper"

class PhotoTest < ActiveSupport::TestCase

  test "should not save photo without title" do
 photo = Photo.new
  assert_not photo.save
end
end
