# frozen_string_literal: true

module FlashHelper
  def render_turbo_stream_flash
    turbo_stream.prepend(:flashes, partial: 'shared/flashes')
  end
end
