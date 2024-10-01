# frozen_string_literal: true

module Common
  class BtnComponentPreview < ViewComponent::Preview
    # @param content text
    # @param builder select { choices: [default, button_to, link_to] }
    # @param style select { choices: [primary, secondary, ghost, link, icon] }
    # @param other_styles text
    # @param left_icon select { choices: ['', 'cube'] }
    # @param right_icon select { choices: ['', 'cube'] }
    # @param disabled toggle
    # @param type select { choices: [submit, button] }
    # @param path text
    # @param method select { choices: [get, post, patch, delete] }
    # @param data text

    def playground(builder: 'default',
                   style: 'primary', other_styles: nil,
                   type: 'button',
                   path: '/', method: :get,
                   left_icon: nil, right_icon: nil,
                   disabled: false, data: {},
                   content: 'playground')
      render(Common::Btn::BtnComponent.new(builder:, style:, other_styles:, type:, path:, method:, disabled:,
                                           left_icon:, right_icon:, data:).with_content(content))
    end

    # @!group Primary

    def primary_default
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'primary')) do
        'Default'
      end
    end

    def primary_left_icon
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'primary', left_icon: 'cube')) do
        'Left Icon'
      end
    end

    def primary_right_icon
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'primary', right_icon: 'cube')) do
        'Right Icon'
      end
    end

    def primary_disabled
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'primary', disabled: true)) do
        'Disabled'
      end
    end

    def primary_load
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'primary', other_styles: 'load',
                                           disabled: true)) do
        'Load'
      end
    end

    def primary_full
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'primary', other_styles: 'full')) do
        'Full'
      end
    end

    def primary_icon
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'primary', other_styles: 'icon',
                                           left_icon: 'cube'))
    end

    # @!endgroup

    # @!group Secondary

    def secondary_default
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'secondary')) do
        'Default'
      end
    end

    def secondary_left_icon
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'secondary', left_icon: 'cube')) do
        'Left Icon'
      end
    end

    def secondary_right_icon
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'secondary', right_icon: 'cube')) do
        'Right Icon'
      end
    end

    def secondary_disabled
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'secondary', disabled: true)) do
        'Disabled'
      end
    end

    def secondary_load
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'secondary', other_styles: 'load',
                                           disabled: true)) do
        'Load'
      end
    end

    def secondary_full
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'secondary', other_styles: 'full')) do
        'Full'
      end
    end

    def secondary_icon
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'secondary', other_styles: 'icon',
                                           left_icon: 'cube'))
    end

    # @!endgroup

    # @!group Ghost

    def ghost_default
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'ghost')) do
        'Default'
      end
    end

    def ghost_left_icon
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'ghost', left_icon: 'cube')) do
        'Left Icon'
      end
    end

    def ghost_right_icon
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'ghost', right_icon: 'cube')) do
        'Right Icon'
      end
    end

    def ghost_disabled
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'ghost', disabled: true)) do
        'Disabled'
      end
    end

    def ghost_load
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'ghost', other_styles: 'load',
                                           disabled: true)) do
        'Load'
      end
    end

    def ghost_full
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'ghost', other_styles: 'full')) do
        'Full'
      end
    end

    def ghost_icon
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'ghost', other_styles: 'icon',
                                           left_icon: 'cube'))
    end

    # @!endgroup

    # @!group Link

    def link_default
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'link')) do
        'Default'
      end
    end

    def link_left_icon
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'link', left_icon: 'cube')) do
        'Left Icon'
      end
    end

    def link_right_icon
      render(Common::Btn::BtnComponent.new(builder: 'default', style: 'link', right_icon: 'cube')) do
        'Right Icon'
      end
    end

    # @!endgroup
  end
end
