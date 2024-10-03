# lib/text_truncation_helper.rb

require "text_truncation_helper/version"  # Version of the gem
require "text_truncation_helper/rails_helper"  # Helper module for Rails integration
require 'rails'  # Require Rails for Railtie support
require 'rails/railtie'
require 'active_support/all'  # Load all ActiveSupport extensions

module TextTruncationHelper
  # Define your main module and any methods that don't relate to Rails views.
  
  # Truncates the given text and adds a "Read More" link at the end if the text exceeds the specified length.
  def self.truncate_text(text, length: 100, read_more: 'Read More')
    return text if text.length <= length
    
    truncated_text = text[0, length] + '...'  # Shorten text and add ellipsis
    truncated_text += " <a href='#' class='read-more-btn'>#{read_more}</a>"  # Add "Read More" link
    truncated_text.html_safe  # Make the string safe for HTML rendering
  end

  # Include Rails helper methods if this gem is used in a Rails app.
  class Railtie < Rails::Railtie
    initializer "text_truncation_helper.view_helpers" do
      ActiveSupport.on_load(:action_view) do
        include TextTruncationHelper::RailsHelper  # Include the Rails-specific helper in Rails views
      end
    end
  end
end
