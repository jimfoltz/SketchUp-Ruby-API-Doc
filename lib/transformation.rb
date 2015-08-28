module Geom
  class Transformation

    # Creates a new transformation object.
    # @overload initialize()
    #   Creates a new identity transformation.
    # @overload initialize(point)
    #   Creates a transformation that translates by the vector from the origin to the given point.
    #   @param [Geom::Point3d] point
    # @overload initialize(vector)
    #   Creates a transformation that translates by the given vector.
    #   @param [Geom::Vector3d, Array<Numeric>] vector
    # @overload initialize(transformation)
    #   Creates a transformation that is a copy of the given transformation.
    #   This is equivalent to {clone}.
    #   @param [Geom::Transformation] transformation
    # @overload initialize(array)
    #   Creates a transformation from a 16 element array that represents a
    #   transformation matrix in row major ordering.
    #   @param [Array<Numeric>] array
    # @overload initialize(scale)
    #   Creates a transformation that does uniform scaling.
    #   @param [Numeric] scale
    # @overload initialize(origin, zaxis)
    #   Creates an axis transformation where where xaxis and yaxis are arbitrarily chosen.
    #   @param [Geom::Point3d, Array<Numeric>] origin
    #   @param [Geom::Vector3d, Array<Numeric>] zaxis
    # @overload initialize(origin, xaxis, yaxis)
    #   Creates an axis transformation from origin, xaxis and yaxis. The zaxis
    #   is set orthogonal to the given axis according to the right-hand rule.
    #   @param [Geom::Point3d, Array<Numeric>] origin
    #   @param [Geom::Vector3d, Array<Numeric>] xaxis
    #   @param [Geom::Vector3d, Array<Numeric>] yaxis
    # @overload initialize(point, axis, angle)
    #   Creates a transformation that rotates counter-clockwise about an axis by given angle.
    #   @param [Geom::Point3d, Array<Numeric>] point
    #   @param [Geom::Vector3d, Array<Numeric>] axis
    #   @param [Numeric] angle  The angle in radians
    # @overload initialize(xaxis, yaxis, zaxis, origin)
    #   Creates a transformation from 3 axis and an origin.
    #   @param [Geom::Vector3d, Array<Numeric>] xaxis
    #   @param [Geom::Vector3d, Array<Numeric>] yaxis
    #   @param [Geom::Vector3d, Array<Numeric>] zaxis
    #   @param [Geom::Point3d] origin
    def initialize(*args)
    end

    # Matrix multiplication
    # @overload *(point)
    #   @param [Geom::Point3d] point
    # @overload *(vector)
    #   @param [Geom::Vector3d] vector
    # @overload *(transformation)
    #   @param [Geom::Transformation] transformation
    # @return [Geom::Transformation]
    def *(arg)
    end

    # Creates a transformation from 3 axis and an origin.
    # @param [Geom::Point3d, Array<Numeric>] origin
    # @param [Geom::Vector3d, Array<Numeric>] xaxis
    # @param [Geom::Vector3d, Array<Numeric>] yaxis
    # @param [Geom::Vector3d, Array<Numeric>] zaxis
    # @return [Geom::Transformation]
    def self.axes(origin, xaxis, yaxis, zaxis)
    end

    # Creates another transformation identical to the transformation being cloned.
    # @return [Geom::Transformation] A new transformation that is a copy of this one.
    def clone
    end

    # Determines if this transformation is an identity transformation, that means that applying it to a geometry
    # won't modify it.
    # @return [Boolean] true if this transformation is an identity transformation
    # @note There is an issue that this method returns only true for transformations initialized as
    #   identity, either with {Transformation.new} or from the constant Geom::Transformation::Identity
    def identity?
    end

    # Create a new transformation that is the result of interpolating between two other transformations.
    # Creates a new point as a linear combination of two points. This method is generally used to get a point at some
    # percentage along a line connecting the two points. The weights should sum up to 1 if you want to get a on that
    # line. The weights should be between 0 and 1 if you want to get a point between the two points.
    # @param [Numeric] weight1  The weight of point1.
    # @param [Geom::Point3d, Array<Numeric>] point1
    # @param [Numeric] parameter  The weight of point2.
    # @param [Geom::Point3d, Array<Numeric>] point2
    # @return [Geom::Point3d]
    # @note This method fails to interpolate if a uniform scaling is not realized by the three diagonal matrix elements
    #   but by the last matrix element. In that case, it would return the first transformation for parameter 0 and
    #  otherwise the second transformation.
    # @note Note transformation matrices are not suited for interpolating rotations: An rotation by 180 would "squeeze"
    #   the transformed object through the rotation axis and then expand to the final state instead of rotating either
    #   left way or right way.
    def self.interpolate
    end

    # Creates a new transformation that is the inverse of this transformation.
    # @return [Geom::Transformation]
    def inverse
    end

    # Modifies this transformation to its inverse.
    # @return [self]
    def invert!
    end

    # Retrieves the origin of a transformation.
    # @return [Geom::Point3d]
    def origin
    end

    # Creates a new transformation that does a counter-clockwise rotation about an axis by given angle.
    # @param [Geom::Point3d, Array<Numeric>] point  A point on the axis of rotation
    # @param [Geom::Vector3d, Array<Numeric>] vector  A vector defining the direction of the axis
    # @param [Numeric] angle  The angle in radians
    # @return [Geom::Transformation] The new rotation transformation
    def self.rotation(point, vector, angle)
    end

    # Creates a new transformation that does a scaling.
    # @overload self.scaling(scale)
    #   Uniform scaling about the origin.
    #   @param [Numeric] scale  Uniform scaling factor for all three axes
    # @overload self.scaling(point, scale)
    #   Uniform scaling about a given point.
    #   @param [Geom::Point3d, Array<Numeric>] point
    #   @param [Numeric] scale  Uniform scaling factor for all three axes
    # @overload self.scaling(xscale, yscale, zscale)
    #   Non-uniform scaling about the origin.
    #   @param [Numeric] xscale  Scaling factor along the x-axis
    #   @param [Numeric] yscale  Scaling factor along the y-axis
    #   @param [Numeric] zscale  Scaling factor along the z-axis
    # @overload self.scaling(xscale, yscale, zscale)
    #   Non-uniform scaling about a given point.
    #   @param [Geom::Point3d, Array<Numeric>] point
    #   @param [Numeric] xscale  Scaling factor along the x-axis
    #   @param [Numeric] yscale  Scaling factor along the y-axis
    #   @param [Numeric] zscale  Scaling factor along the z-axis
    # @return [Geom::Transformation] The new scaling transformation
    def self.scaling
    end

    # Sets this transformation to match another one.
    # @overload set!(transformation)
    #   @param [Geom::Transformation] transformation  Another transformation object
    # @overload set!(array)
    #   @param [Array<Numeric>] array  A 16 element array of a transformation matrix in row major ordering.
    # @return [self]
    def set!(transformation)
    end

    # Returns an array representation of this transformation.
    # @return [Array<Float>] A 16 element array the matrix elements.
    def to_a
    end

    # Creates a new transformation that translates by the given vector.
    # @param [Geom::Vector3d, Geom::Point3d, Array<Numeric>] vector
    # @return [Geom::Transformation] The new rotation transformation
    def self.translation(vector)
    end

    #  Retrieves the x-axis of this transformation.
    # @return [Geom::Vector3d]
    def xaxis
    end

    #  Retrieves the y-axis of this transformation.
    # @return [Geom::Vector3d]
    def yaxis
    end

    #  Retrieves the z-axis of this transformation.
    # @return [Geom::Vector3d]
    def zaxis
    end

  end
end
