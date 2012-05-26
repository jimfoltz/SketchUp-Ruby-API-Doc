# In addition to the built-in {http://www.ruby-doc.org/core-1.8.6/Array.html Ruby Array} methods, the following methods have been added by SketchUp.
# @note In SketchUp, Arrays may be used as both Point3d and Vector3d objects depending on  how they are used.
class Array
    def cross
    end

    # @param [Point3d, Array(3)]
    #
    # @example
    #   [0, 0].distance([1, 1])
    #   ==> 1.4142135623731
    #
    # @return [Length] a Length
    def distance(pt3d_or_array)
    end

    def distance_to_line
    end
    def distance_to_plane
    end
    def dot
    end
    def normalize
    end
    def normalize!
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
