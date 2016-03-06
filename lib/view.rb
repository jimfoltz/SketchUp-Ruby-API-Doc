module Sketchup
    class View

        # Attach a {Sketchup::ViewObserver} to the View
        #
        # @param [Sketchup::ViewObserver] view_observer an instance of a ViewObserver
        # @return [Boolean] true if successful, false if not
        def add_observer(view_observer)
        end

        def animation=(animation)
        end

        def average_refresh_time
        end

        # Returns a reference to the {Sketchup::Camera}
        #
        # @return [Camera]
        #
        def camera
        end

        def camera=(camera)
        end
        def center
        end
        def corner(index)
        end
        def draw(mode, *points)
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
        def draw2d(opengl_primitive, *points)
        end
        def draw_line(*args)
        end
        def draw_lines(*args)
        end
        def draw_points(points, size, style, color)
        end
        def draw_polyline(*args)
        end
        
        # @return [View]
        # @overload draw_text(point, text)
        #   @since SketchUp 6
        #   @param [Point3d] point
        #   @param [String] text
        #
        # @overload draw_text(point, text, opts = {})
        #   @since SketchUp 2016
        #   @param [Point3d] point
        #   @param [String] text
        #   @param [Hash] opts
        #   @option opts [String] :font_name The name of the font to use. If it does not #     exist on the system, a default font will be used instead.
        #   @option opts [Integer] :font_size The size of the font in points
        #   @option opts [Boolean] :bold Controls the Bold property of the font.
        #   @option opts [Boolean] :italic Controls the Italic property of the font.
        #   @option opts [Color] :color The color to draw the text with.
        #   @option opts [Integer] :align The text alignment, one of the following:
        #     TextAlignLeft, TextAlignCenter or TextAlignRight. 
        #   
        def draw_text(point, string, options_hash)
        end

        def drawing_color=(color)
        end
        def dynamic=(boolean)
        end
        def field_of_view
        end
        def field_of_view=(fov)
        end
        def guess_target
        end
        def inference_locked?
        end
        def inputpoint(x, y, inputpoint = nil)
        end
        def invalidate
        end
        def last_refresh_time
        end
        def line_stipple=(pattern)
        end
        def line_width=(pixel_width)
        end
        def lock_inference(inputpoint1 = nil, inputpoint2 = nil)
        end
        def model
        end
        # @return [Sketchup::PickHelper]
        def pick_helper(x = nil, y = nil, aperture = nil)
        end
        def pickray(x = nil, y = nil)
        end
        def pixels_to_model(pixel_size, point)
        end
        def remove_observer(observer)
        end
        def screen_coords(point)
        end
        def set_color_from_line(point1, point2)
        end
        def show_frame(delay = 0)
        end
        def tooltip=(string)
        end
        def vpheight
        end
        def vpwidth
        end
        def write_image(filename_or_hash, width = nil, height = nil, antialias = nil, compression = nil)
        end
        def zoom(zoom_or_entities)
        end
        def zoom_extents
        end
    end
end
