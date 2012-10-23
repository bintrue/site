include Nanoc3::Helpers::Blogging
include Nanoc3::Helpers::Tagging
include Nanoc3::Helpers::Rendering
include Nanoc3::Helpers::LinkTo

module PostHelper
  def get_event_place(post)
    post[:place]
  end

  def get_event_date(post)
    attribute_to_time(post[:event_date]).strftime('%d %b %Y')
  end

  def get_pretty_date(post)
    attribute_to_time(post[:created_at]).strftime('%d %b %Y')
  end
end

include PostHelper

