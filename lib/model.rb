module Sketchup
    # This is the access point for many common Sketchup objects
    class Model
        # @private
        def initialize
            # These collections may also depend on the template...
            @entities    = Sketchup::Entities.new
            #@layers      = Sketchup::Layers.new
            #@materials   = Sketchup::Materials.new
            #@definitions = Sketchup::DefinitionList.new
            #@options     = Sketchup::OptionsManager.new
            #@pages       = Sketchup::Pages.new
            #@styles      = Sketchup::Styles.new
            #@selection   = Sketchup::Selection.new
        end
        
        # @private
        #def inspect
            #self
        #end

        def abort_operation
        end

        # @return [Sketchup::Entities]
        def active_entities
        end

        # @return [Sketchup::Layer]
        def active_layer
        end

        # @param [Layer] layer
        def active_layer=(layer)
        end

        def active_path
        end

        # @return [View]
        def active_view
        end
        def add_note
        end
        def add_observer
        end
        def attribute_dictionaries
        end
        def attribute_dictionary
        end
        def behavior
        end

        # @return [BoundingBox]
        def bounds
        end

        def classifications
        end

        # @since 2015
        def close(ignore_changes = false)
          nil
        end

        def close_active
        end
        def commit_operation
        end

        # @return [DefinitionList]
        def definitions
        end
        def description
        end
        def description=
        end
        def edit_transform
        end

        # Returns a reference to the active_model's top-level entities collection.
        # @return [Entities] collection
        # @see active_entities
        def entities
            @entities
        end

        def export
        end

        # Finds and returns entities by their entityID or GUID. 
        def find_entity_by_id(id_list_or_array)
        end

        # @see set_attribute
        def get_attribute
        end

        def get_datum
        end
        def get_product_family
        end
        def guid
        end
        def import
        end
        def latlong_to_point
        end

        # @return [Layers]
        def layers
            @layers
        end

        def list_datums
        end

        # @return [Materials]
        def materials
            @materials
        end

        def mipmapping=
        end
        def mipmapping?
        end
        def modified?
        end

        # The model name, or "" if model as not been saved.
        # @return [String]
        def name
        end

        def name=
        end
        def options
            @options
        end

        # @return a reference to the model's Pages (Scenes) collection.
        def pages
            @pages
        end

        def path
        end
        def place_component
        end
        def point_to_latlong
        end
        def point_to_utm
        end
        def raytest
        end
        def remove_observer
        end

        # @return [RenderingOptions]
        def rendering_options
        end
        def save
        end

        # @since SketchUp 2014
        def save_copy
        end

        def save_thumbnail
        end
        def select_tool
        end

        # @return a collection of selected Entity objects
        def selection
            @selection
        end

        # @see Model#get_attribute
        def set_attribute
        end

        def set_datum
        end

        # @return [ShadowInfo] object
        def shadow_info
        end

        # The start_operation method is used to notify Edit > Undo that a new operation (which can be undone) is starting.
        # 
        # @overload start_operation(op_name)
        #   @since SketchUp 6.0
        #   @param [String] op_name the name which appears 
        #
        # @overload start_operation(op_name [,disable_ui, transparent, prev_trans])
        #   @since SketchUp 7.0
        #   @param [String] op_name optional the name which appears 
        #   @param [optional, true/false] disable_ui user interface changes are suppressed.
        #   @param [Boolean] transparent
        #   @param [Boolean] prev_trans
        #
        # @return [bool] true if successful, false if not.
        def start_operation(op_name, disable_ui = false, next_transparent = false, previous_transparent = false)
        end

        def styles
        end
        def tags
        end
        def tags=
        end

        # The name of the model
        # @return [String] model name
        def title
        end

        def tools
        end
        def utm_to_point
        end
        def valid?
        end
    end
end
