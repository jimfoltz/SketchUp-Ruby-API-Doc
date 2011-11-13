module Geom
    class Point3d
	# @private
	def initialize(pt = nil)
	    @x = pt[0]
	    @y = pt[1]
	    @z = pt[2]
	end
	
        # Returns a new Point3d which is offset from the receiver by the given vector.
        # @example
        #   pt = Geom::Point3d.new(1, 2, 3)
        #   pt2 = pt + [1, 1, 1]
        #   ==> Point3d(2, 3, 4)
        # @param [Vector3d] vector a Vector3d or Array used to offset the point
        # @return [Point3d]
        # @since SketchUp 6.0
        def +(vector)
        end

        def -
        end

        def <
        end
        def ==
        end
        def []
        end
        def []=
        end
        def clone
        end
        def distance
        end
        def distance_to_line
        end
        def distance_to_plane
        end
        def inspect
        end
        def linear_combination
        end
        def new
        end
        def offset
        end
        def offset!
        end
        def on_line?
        end
        def on_plane?
        end
        def project_to_line
        end
        def project_to_plane
        end
        def set!
        end
        def to_a
        end

        # @return String representation of the Point3d in the current Model units.
        def to_s
        end

        def transform
        end
        def transform!
        end
        def vector_to
        end
        def x
        end
        def x=
        end
        def y
        end
        def y=
        end
        def z
        end
        def z=
        end
    end
end
