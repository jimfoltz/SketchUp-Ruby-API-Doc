module UI
  class WebDialog

    # @param [String] callback_name
    #
    # @yield [dialog, param]
    # @yieldparam [UI::WebDialog] dialog
    # @yieldparam [String] param
    #
    # @return [Nil]
    def add_action_callback(callback_name)
    end

    # @param [String] hostname
    #
    # @return [Nil]
    def allow_actions_from_host(hostname)
    end

    # @return [Nil]
    def bring_to_front
    end

    # @return [Nil]
    def close
    end

    # @param [String] script
    #
    # @return [Nil]
    def execute_script(script)
    end

    # @return [String]
    def get_default_dialog_color
    end

    # @param [String] element_id
    #
    # @return [Nil]
    def get_element_value(element_id)
    end

    # @return [Integer]
    def max_height
    end

    # @param [Integer] value
    #
    # @return [Integer]
    def max_height=(value)
    end

    # @return [Integer]
    def max_width
    end

    # @param [Integer] value
    #
    # @return [Integer]
    def max_width=(value)
    end

    # @return [Integer]
    def min_height
    end

    # @param [Integer] value
    #
    # @return [Integer]
    def min_height=(value)
    end

    # @return [Integer]
    def min_width
    end

    # @param [Integer] value
    #
    # @return [Integer]
    def min_width=(value)
    end

    # @param [Boolean] value
    #
    # @return [Boolean]
    def navigation_buttons_enabled=(value)
    end

    # @return [Boolean]
    def navigation_buttons_enabled?
    end

    # @overload new(title, scrollable, preferences_key, width, height, left, top, resizable)
    #   @param [String] title
    #   @param [Boolean] scrollable
    #   @param [String] preferences_key
    #   @param [Integer] width
    #   @param [Integer] height
    #   @param [Integer] left
    #   @param [Integer] top
    #   @param [Boolean] resizable
    #
    # @overload new(options)
    #   @param preferences_key [Hash] options
    #   @option options [String] :dialog_title
    #   @option options [String] :preferences_key
    #   @option options [Boolean] :scrollable
    #   @option options [Boolean] :resizable
    #   @option options [Integer] :top
    #   @option options [Integer] :left
    #   @option options [Integer] :width
    #   @option options [Integer] :height
    #   @option options [Boolean] :mac_only_use_nswindow
    #
    # @return [UI::WebDialog]
    def new(*args)
    end

    # @param [String] url
    # @param [String] data
    #
    # @return [Nil]
    def post_url
    end

    # @since SketchUp 2014
    # @return [Float] screen scale factor
    def screen_scale_factor
    end

    # @param [String] color
    #
    # @return [Nil]
    def set_background_color(color)
    end

    # @param [String] filename
    # @param [String] path
    #
    # @return [Nil]
    def set_file(filename, path = nil)
    end

    # @since SketchUp 7.1
    #
    # @param [Boolean] value
    #
    # @return [UI::WebDialog]
    def set_full_security(value)
    end

    # @param [String] html
    #
    # @return [Nil]
    def set_html(html)
    end

    # @yield [dialog]
    # @yieldparam [UI::WebDialog] dialog
    #
    # @return [Nil]
    def set_on_close
    end

    # @param [Integer] left
    # @param [Integer] top
    #
    # @return [Nil]
    def set_position(left, top)
    end

    # @param [Integer] width
    # @param [Integer] height
    #
    # @return [Nil]
    def set_size(width, height)
    end

    # @param [String] url
    #
    # @return [Nil]
    def set_url(url)
    end

    # @yield [dialog]
    # @yieldparam [UI::WebDialog] dialog
    #
    # @return [Nil]
    def show
    end

    # @yield [dialog]
    # @yieldparam [UI::WebDialog] dialog
    #
    # @return [Nil]
    def show_modal
    end

    def visible?
    end

  end
end
