module Geom
  class Vector3d

    def %
    end
    
    # Computes the cross product between 2 Vectors.
    # @return [Vector3d]
    def *(vector)
    end

    # Vector Addition
    def +
    end

    # Vector subtraction
    def -
    end
    def <
    end

    # Determines if vectors are equal within tolerance.
    def ==
    end

    # Element Reference
    # @param [i] index of element 0, 1, or 2
    # @return element at index i
    def []
    end

    def []=
    end
    def angle_between
    end
    def axes
    end
    def clone
    end
    # Computes the cross product between another vector.
    def cross(vector)
    end

    # Compute the dot product between another vector.
    def dot
    end
    def inspect
    end

    def length
    end
    def length=
    end
    def linear_combination
    end

    # Creates a new vector.
    # @overload self.new()
    #   Creates a vector with all coordinates set to zero. Note that such a zero-length vector is not valid.
    # @overload self.new(vector)
    #   @param [Geom::Vector3d] vector  another vector
    # @overload self.new(array)
    #   @param [Array<Length,Numeric>] array  an array of two or three coordinates
    # @overload self.new(x, y, z=0)
    #   @param [Length,Numeric] x  the x coordinate
    #   @param [Length,Numeric] y  the y coordinate
    #   @param [Length,Numeric] z  the z coordinate
    # @return [Geom::Vector3d] a new vector instance
    def self.new(*args)
    end

    def normalize
    end
    def normalize!
    end
    def parallel?
    end
    def perpendicular?
    end
    def reverse
    end
    def reverse!
    end
    def samedirection?
    end
    def set!
    end
    def to_a
    end
    def to_s
    end
    def transform
    end
    def transform!
    end
    def unitvector?
    end
    def valid?
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
end # module Geom
