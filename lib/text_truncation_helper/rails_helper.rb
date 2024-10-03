# lib/text_truncation_helper/rails_helper.rb

require 'text_truncation_helper'


module TextTruncationHelper
  module RailsHelper
    # A helper method for use in Rails views. It calls the main truncation logic from the core module.
    def truncate_with_read_more(text, length: 100, read_more: 'Read More')
      TextTruncationHelper.truncate_text(text, length: length, read_more: read_more)
    end
  end
end
