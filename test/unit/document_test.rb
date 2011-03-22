require 'test_helper'

class DocumentTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "document attributes must not be empty" do
  	document = Document.new
  	assert document.invalid?
  	assert document.errors[:title].any?
  	assert document.errors[:author].any?
  	assert document.errors[:date].any?
  	assert document.errors[:body].any?
  	assert document.errors[:category].any?
  end
end
