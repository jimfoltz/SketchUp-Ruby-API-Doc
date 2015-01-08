module Sketchup
    class Page < Entity

        def initialize
            @delay_time = -1
        end
        private :initialize

        # Returns the {Sketchup::Camera} for the Page
        # @return [Camera]
        def camera
        end

        # @return [Float] seconds the delay time in seconds
        def delay_time
        end

        # @return [Float]
        def delay_time=
        end

        # @return [String] description The Scene description from the Scenes dialog
        def description
        end

        # Set the Scene description
        # @return [String] description The Scene description from the Scenes dialog
        def description=
        end

        # @return [Array] ary and array of hidden entities. Objects
        #   on hidden Layers are not considered hidden in this context.
        def hidden_entities
        end

        # @return [String]
        def label
        end

        # @return [Array<Layer>] ary an Array of non-visible Layer entities.
        def layers
        end

        # @return [String] the name from the Scene tab
        def name
        end

        # @return [String] 
        def name=
        end

        # @return [RenderingOptions] a Rendering Options object for the Scene
        def rendering_options
        end

        # Set the visibilty of a Layer for the Scene
        # @param [Layer] layer
        # @param [Boolean] visibilty
        # @return [Page] 
        def set_visibility(layer, visibility)
        end

        # Returns the shadow info object for the Scene
        # @return [ShadowInfo] or nil
        def shadow_info
        end

        def style
        end

        def transition_time
        end

        def transition_time=
        end

        def update
        end

        def use_axes=
        end

        def use_axes?
        end

        def use_camera=
        end

        def use_camera?
        end

        def use_hidden=
        end

        def use_hidden?
        end

        def use_hidden_layers=
        end

        def use_hidden_layers?
        end

        def use_rendering_options=
        end

        def use_rendering_options?
        end

        def use_section_planes=
        end

        def use_section_planes?
        end

        def use_shadow_info=
        end

        def use_shadow_info?
        end

        def use_style=
        end

        def use_style?
        end
    end
end
