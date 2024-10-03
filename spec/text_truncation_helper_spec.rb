# spec/text_truncation_helper_spec.rb
require 'spec_helper'  # Ensure this file is required

RSpec.describe TextTruncationHelper do
  describe '#truncate_text' do
    it 'truncates text that exceeds the specified length' do
      text = 'This is a long text that needs to be truncated'
      truncated = TextTruncationHelper.truncate_text(text, length: 10)

      expect(truncated).to eq('This is a ... <a href=\'#\' class=\'read-more-btn\'>Read More</a>')
    end

    it 'returns the full text if it is shorter than the specified length' do
      text = 'Short text'
      truncated = TextTruncationHelper.truncate_text(text, length: 50)

      expect(truncated).to eq('Short text')
    end
  end
end
