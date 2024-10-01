# frozen_string_literal: true

module Common
  class ModalComponentPreview < ViewComponent::Preview
    def default
      render(Common::Modal::ModalComponent.new(open: true))
    end
  end
end
