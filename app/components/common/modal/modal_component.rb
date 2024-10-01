# frozen_string_literal: true

module Common
  module Modal
    class ModalComponent < ViewComponent::Base
      def initialize(open: false)
        super

        @open = open
      end
    end
  end
end
