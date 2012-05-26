module Sketchup
    class Menu
	# add_item may take 2 forms.
	#
	# @overload add_item(menu_item)
	#   @param [String] menu_item the name of the menu item, or a UI::Command object. 
	#   @example
	#     menu = UI.menu("Plugins")
	#     menu_id = menu.add_item("Calculate Area"} { calc_area }
	#
	# @overload add_item(command)
	#   @param [UI::Command] command a UI::Command object
	#   @example
	#     menu = UI.menu("Plugins")
	#     cmd = UI::Command.new("Calculate Area") { calc_area }
	#     menu_id = menu.add_item(cmd)
	#
	# @return [menu_id] a unique numeric id number

        def add_item(item)
        end

        def add_separator
        end
        def add_submenu
        end
        def set_validation_proc
        end
    end
end
