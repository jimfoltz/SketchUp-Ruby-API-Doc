module Geom
    class Point3d
	# @private
	def initialize(pt = nil)
	    @x = pt[0]
	    @y = pt[1]
	    @z = pt[2]
	end
	
        def +
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
