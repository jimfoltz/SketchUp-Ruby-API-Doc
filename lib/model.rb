module Sketchup
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
        def active_entities
        end
        def active_layer
        end
        def active_layer=
        end
        def active_path
        end
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

        def close_active
        end
        def commit_operation
        end
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
        def rendering_options
        end
        def save
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

        # @overload start_operation(op_name) @since 6.0
        # @param [String] op_name the name which appears 
        # @since 7.0
        # @overload start_operation(op_name, disable_ui, trasnparent, prev)
        # @param [Boolean] disable_ui user interface changes are suppressed.
        def start_operation(op_name)
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
