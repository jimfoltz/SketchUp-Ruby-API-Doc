module Geom
  class Vector3d

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
    def initialize(*args)
    end

    def %(vector)
    end

    # Computes the cross product between 2 Vectors.
    # @return [Vector3d]
    def *(vector)
    end

    # Vector Addition
    def +(vector)
    end

    # Vector subtraction
    def -(vector)
    end
    def <(vector)
    end

    # Determines if vectors are equal within tolerance.
    def ==(vector)
    end

    # Element Reference
    # @param [i] index of element 0, 1, or 2
    # @return element at index i
    def []
    end

    def []=(value)
    end
    def angle_between(vector)
    end
    def axes
    end
    def clone
    end
    # Computes the cross product between another vector.
    def cross(vector)
    end

    # Compute the dot product between another vector.
    def dot(vector)
    end
    def inspect
    end

    def length
    end
    def length=(value)
    end
    def linear_combination
    end
    def normalize
    end
    def normalize!
    end
    def parallel?(vector)
    end
    def perpendicular?(vector)
    end
    def reverse
    end
    def reverse!
    end
    def samedirection?(vector)
    end
    def set!(*args)
    end
    def to_a
    end
    def to_s
    end
    def transform(transformation)
    end
    def transform!(transformation)
    end
    def unitvector?
    end
    def valid?
    end
    def x
    end
    def x=(value)
    end
    def y
    end
    def y=(value)
    end
    def z
    end
    def z=(value)
    end
  end
end # module Geom
