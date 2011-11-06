module UI
    def self.add_context_menu_handler
    end

    # @example
    #   UI.beep
    def self.beep
    end

    def self.create_cursor
    end
    def self.inputbox
    end
    def self.inspector_names
    end

    # Used to access SketchUp menus in order to add menu items.
    #
    # Valid Strings are:
    #     File, Edit, View, Camera, Draw, Tools, Window, Plugins, Help
    #
    # User-defined top-level menus will not be added., although users may define {Sketchup::Menu#add_submenu sub-menus}.
    #
    # A mis-typed menu name _may_ return one of the valid menu with no error given, or
    # it may produce an error.
    #
    # The *Plugins* menu may or may not be visible when SketchUp starts. It will be created
    # upon the first access.
    #
    # References to Menus are time-sensitive. You have a limited amount of time to add your menu items 
    # before the menu reference no longer works. No error given in this case.
    #
    # @example
    #   menu = UI.menu("Plugins")
    #   menu.add_item("My Plugin") { UI.messagebox("Hello!") }
    #
    # @param [String] menu_name the name of an existing SketchUp menu.
    #
    # @return [Sketchup::Menu] a menu object
    def self.menu(menu_name = nil)
    end

    def self.messagebox
    end
    def self.model_info_pages
    end
    def self.openURL
    end
    def self.openpanel
    end
    def self.play_sound
    end
    def self.preferences_pages
    end
    def self.refresh_inspectors
    end
    def self.savepanel
    end
    def self.set_cursor
    end
    def self.set_toolbar_visible
    end
    def self.show_inspector
    end
    def self.show_model_info
    end
    def self.show_preferences
    end
    def self.start_timer
    end
    def self.stop_timer
    end
    def self.toolbar
    end
    def self.toolbar_names
    end
    def self.toolbar_visible?
    end
end
