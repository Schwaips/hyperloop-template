# frozen_string_literal: true

module Common
  class FlashComponentPreview < ViewComponent::Preview
    # @param type select { choices: ["notice", "alert"] }
    # @param message text
    def playground(type: "notice", message: "This is a notice")
        render(Common::Flash::FlashComponent.new(type: type, message: message))
    end

    def notice
      render(Common::Flash::FlashComponent.new(type: "notice", message: "This is a notice"))
    end

    def alert
      render(Common::Flash::FlashComponent.new(type: "alert", message: "This is an alert"))
    end
  end
end
