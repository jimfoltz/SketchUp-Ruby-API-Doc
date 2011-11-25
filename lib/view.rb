module Sketchup
    class View

        # Attach a {Sketchup::ViewObserver} to the View
        #
        # @param [Sketchup::ViewObserver] view_observer an instance of a ViewObserver
        # @return [Boolean] true if successful, false if not
        def add_observer(view_observer)
        end

        def animation=
        end

        def average_refresh_time
        end

        # Returns a reference to the {Sketchup::Camera}
        #
        # @return [Camera]
        #
        def camera
        end

        def camera=
        end
        def center
        end
        def corner
        end
        def draw
        end

        # Used to draw temporary geometry on the screen rather than 3d space.
        #
        #  Object.constants.grep(/GL_/).sort
        #  ["GL_LINES", "GL_LINE_LOOP", "GL_LINE_STRIP", "GL_POINTS", "GL_POLYGON", "GL_QUADS",
        #  "GL_QUAD_STRIP", "GL_TRIANGLES", "GL_TRIANGLE_FAN", "GL_TRIANGLE_STRIP"]
        #
        # @example
        #   view.draw2d(GL_POINTS, [ [0, 0], [1, 0], [1, 1], [0, 1] ])
        #   
        # @param  opengl_primitive  Ruby Constant mapped to an OpenGL primitive type.
        #
        # @param [Array] points An Array of 2d screen coordinates in pixels.
        #
        # @return [View] the View
        def draw2d(opengl_primitive, points)
        end
        def draw_line
        end
        def draw_lines
        end
        def draw_points
        end
        def draw_polyline
        end
        def draw_text
        end
        def drawing_color=
        end
        def dynamic=
        end
        def field_of_view
        end
        def field_of_view=
        end
        def guess_target
        end
        def inference_locked?
        end
        def inputpoint
        end
        def invalidate
        end
        def last_refresh_time
        end
        def line_stipple=
        end
        def line_width=
        end
        def lock_inference
        end
        def model
        end
        def pick_helper
        end
        def pickray
        end
        def pixels_to_model
        end
        def remove_observer
        end
        def screen_coords
        end
        def set_color_from_line
        end
        def show_frame
        end
        def tooltip=
        end
        def vpheight
        end
        def vpwidth
        end
        def write_image
        end
        def zoom
        end
        def zoom_extents
        end
    end
end
