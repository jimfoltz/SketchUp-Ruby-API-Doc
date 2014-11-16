module Sketchup
    # Accessed via {Sketchup::View#camera} or a {Sketchup::Page#camera}
    class Camera
        def aspect_ratio
        end
        def aspect_ratio=
        end

        # @since SketchUp 2015
        # @return [Geom::Point3d]
        def center_2d
        end

        def description
        end
        def description=
        end
        def direction
        end
        def eye
        end
        def focal_length
        end
        def focal_length=
        end
        def fov
        end
        def fov=
        end

        # @since SketchUp 2015
        def fov_is_height?
        end

        def height
        end
        def height=
        end

        # @since SketchUp 2015
        def is_2d?
        end

        def image_width
        end
        def image_width=
        end
        def new
        end
        def perspective=
        end
        def perspective?
        end

        # @since SketchUp 2015
        def scale_2d
        end

        def set
        end
        def target
        end
        def up
        end
        def xaxis
        end
        def yaxis
        end
        def zaxis
        end
    end
end
