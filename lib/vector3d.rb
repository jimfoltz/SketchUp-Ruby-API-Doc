module Geom
  class Vector3d

    # Creates a new 3D vector.
    # @overload initialize()
    #   Creates a vector with all coordinates set to zero. Note that such a zero-length vector is not valid.
    # @overload initialize(vector)
    #   @param [Geom::Vector3d] vector  another vector
    # @overload initialize(array)
    #   @param [Array<Numeric>] array  an array of two or three coordinates
    # @overload self.new(x, y, z=0.0)
    #   @param [Numeric] x  the x coordinate
    #   @param [Numeric] y  the y coordinate
    #   @param [Numeric] z  the z coordinate
    def initialize(*args)
    end

    # Dot product.
    # @param [Geom::Vector3d,Array<Numeric>] vector
    # @return [Float]
    def %(vector)
    end

    # Computes the cross product between 2 Vectors.
    # The cross product of two vectors produces a third vector which is perpendicular to the plane in which the first
    # two lie.
    # @param [Geom::Vector3d,Array<Numeric>] vector
    # @return [Geom::Vector3d]
    def *(vector)
    end

    # Vector Addition
    # @param [Geom::Vector3d,Array<Numeric>] vector
    # @return [Geom::Vector3d]
    def +(vector)
    end

    # Vector subtraction
    # @param [Geom::Vector3d,Array<Numeric>] vector
    # @return [Geom::Vector3d]
    def -(vector)
    end

    # Compare two vectors coordinate by coordinate. First the x coordinates are compared, if they are equal, the y
    # coordinates are compared, if those are equal finally the z coordinates.
    # @param [Geom::Vector3d,Array<Numeric>] vector
    # @return [Boolean] true if this vector's x, y or z coordinate is less
    # @example
    #   v1 = Geom::Vector3d.new(10, 10, 90)
    #   v2 = Geom::Vector3d.new(10, 20, 20)
    #   v1 < v2 # ==> true
    def <(vector)
    end

    # Compare {Vector3d}s using SketchUp tolerance.
    # @params [Geom::Vector3d,Array<Numeric>] vector
    # @return [Boolean]
    def ==(vector)
    end

    # Retrieves the coordinate of the vector at the specified index.
    # @param [Integer] index  The index 0, 1 or 2 for a specific x, y, or z value within the vector.
    # @return [Numeric] The coordinate at the specified index.
    # @raise IndexError Raised if the index is outside the range [0,2]. Note that negative indices [-3,-1] don't raise.
    def [](index)
    end

    # Retrieves the coordinate of the vector at the specified index.
    # @param [Integer] index  The index 0, 1 or 2 for a specific x, y, or z value within the vector.
    # @param [Numeric] value  The new x, y or z value.
    # @return [Numeric] The argument passed for the new value.
    # @raise IndexError  Raised if the index is outside the range [0,2]. Note that negative indices [-3,-1] don't raise.
    def []=(index, value)
    end

    # Compute the angle between this vector and another vector.
    # @param [Geom::Vector3d,Array<Numeric>] vector
    # @return [Float] The smallest angle between the vectors in radians.
    def angle_between(vector)
    end

    # Compute an arbitrary set of orthogonal axes with this vector as the z-axis direction. If possible, the vector's
    # x-axis is the up vector, being in plane with the global z-axis.
    # @return [Array(Geom::Vector3d,Geom::Vector3d,Geom::Vector3d)] An array of normalized vectors for the x-axis,
    #   y-axis and z-axis.
    def axes
    end

    # Creates another vector identical to the vector being cloned.
    # @return [Geom::Vector3d] A new vector that is a copy of this one.
    def clone
    end

    # Computes the cross product between another vector.
    # The cross product of two vectors produces a third vector which is perpendicular to the plane in which the first
    # two lie.
    # @param [Geom::Vector3d,Array<Numeric>] vector
    # @return [Geom::Vector3d]
    def cross(vector)
    end

    # Compute the dot product between another vector.
    def dot(vector)
    end

    # Returns a string containing a human-readable representation of this vector.
    # @return [String] A string representation of the vector
    def inspect
    end

    # Retrieves the length of this vector.
    # @return [Length]
    def length
    end

    # Sets length of this vector.
    # @param [Numeric] value  The new length.
    # @return [Numeric] The argument passed for the new value.
    def length=(value)
    end

    # Creates a new vector as a linear combination of two vectors. This method is generally used to get a vector at some
    # percentage along a line connecting the two vectors. The weights should sum up to 1 if you want to get a on that
    # line. The weights should be between 0 and 1 if you want to get a vector between the two vectors.
    # @param [Numeric] weight1  The weight of vector1.
    # @param [Geom::Vector3d,Array<Numeric>] vector1
    # @param [Numeric] weight2  The weight of vector2.
    # @param [Geom::Vector3d,Array<Numeric>] vector2
    # @return [Geom::Vector3d]
    def self.linear_combination(weight1, vector1, weight2, vector2)
    end

    # Creates a copy of this vector that is a unit vector, that means its length is 1.
    # @return [Geom::Vector3d] The new normalized vector.
    def normalize
    end

    # Modifies this vector into a unit vector, that means this vector's length becomes 1.
    # @return [self]
    def normalize!
    end

    # Determines whether this vector is parallel to another vector within tolerance.
    # The vectors may have different length and be reversed but would still be parallel.
    # @param [Geom::Vector3d,<Array<Numeric>] vector another vector
    # @return [Boolean]
    def parallel?(vector)
    end

    # Determines whether this vector is perpendicular to another vector within tolerance.
    # @param [Geom::Vector3d,<Array<Numeric>] vector another vector
    # @return [Boolean]
    def perpendicular?(vector)
    end

    # Creates a copy of this vector in the opposite direction of same length.
    # @return [Geom::Vector3d] The new vector
    def reverse
    end

    # Turns this vector in the opposite direction. This is the same as multiplying its length with -1.
    # @return [self]
    def reverse!
    end

    # Determines if this vector is parallel to and in the same direction as another vector to within tolerance.
    # @param [Geom::Vector3d,<Array<Numeric>] vector another vector
    # @return [Boolean] true if this vector and vector are in the same direction, false if they are not in the same direction
    def samedirection?(vector)
    end

    # Sets the values of this vector.
    # @param [Numeric] x  The location along the x axis.
    # @param [Numeric] y  The location along the y axis. If not given, this coordinate is not modified.
    # @param [Numeric] z  The location along the z axis. If not given, this coordinate is not modified.
    # @return [self]
    def set!(x, y=self.x, z=self.y)
    end

    # Returns an array representation of this vector.
    # @return [Array(Length,Length,Length)] An array containing its x, y, z coordinates
    def to_a
    end

    # Returns a string representation of this vector.
    # @return [String] A string of this vector in the current model units, using the user's locale's decimal delimiter.
    def to_s
    end

    # Applies a transformation to a copy this vector to create a new vector.
    # @param [Geom::Transformation] transformation  A Transformation object.
    # @return [Geom::Vector3d] The new vector
    def transform(transformation)
    end

    # Applies a transformation to this vector.
    # Unlike the {#transform} method, the vector itself is modified.
    # @param [Geom::Transformation] transformation  A Transformation object.
    # @return [self]
    def transform!(transformation)
    end

    # Determines if this vector is a unit vector, that means if its length is 1.0.
    # @return [Boolean] true if the vector is a unit vector, false if it is not a unit vector.
    def unitvector?
    end

    # Verifies if this vector is valid. A vector is valid if its length is not zero.
    # @return [Boolean] true if the vector is valid, false if it is not valid
    def valid?
    end

    # Retrieves the x coordinate of this vector.
    # @return [Float]
    def x
    end

    # Sets the x value of this vector.
    # @param [Numeric] value  The new x coordinate.
    # @return [Numeric] The argument passed for the new value.
    def x=(value)
    end

    # Retrieves the y coordinate of this vector.
    # @return [Float]
    def y
    end

    # Sets the y value of this vector.
    # @param [Numeric] value  The new y coordinate.
    # @return [Numeric] The argument passed for the new value.
    def y=(value)
    end

    # Retrieves the z  coordinate of this vector.
    # @return [Float]
    def z
    end

    # Sets the z value of this vector.
    # @param [Numeric] value  The new z coordinate.
    # @return [Numeric] The argument passed for the new value.
    def z=(value)
    end

  end
end # module Geom
