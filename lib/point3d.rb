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
    # @param [Geom::Vector3d] vector a Vector3d or Array used to offset the point
    # @return [Geom::Point3d]
    # @since SketchUp 6.0
    def +(vector)
    end

    # Returns a Vector3d from
    # @param [Geom::Point3d] point
    # @return [Geom::Vector3d]
    def -(point)
    end

    # Determine which point is closer to the origin
    # @param [Geom::Point3d] point2
    # @return [Boolean] true if point2 is closer to the ORIGIN
    # @example
    #   pt1 = Geom::Point3d.new(10, 10, 10)
    #   pt2 = Geom::Point3d.new(20, 20, 20)
    #   pt1 < pt2 # ==> true
    def < (point2)
    end

    # Compare {Point3d}s using SketchUp tolerance.
    # @overload ==(point2)
    #   @params [Geom::Point3d]
    # @overload ==(array)
    #   @param [Array]
    # @return [Boolean]
    def ==(point2)
    end

    # Retrieves the coordinate of the point at the specified index.
    # @param [Fixnum] index  The index 0, 1 or 2 for a specific x, y, or z value within the Point3d.
    # @return [Length] The coordinate at the specified index.
    # @raise IndexError if the index is outside the range [0,2]. Note that negative indices [-3,-1] don't raise.
    def [](index)
    end

    # Retrieves the coordinate of the point at the specified index.
    # @param [Fixnum] index  The index 0, 1 or 2 for a specific x, y, or z value within the Point3d.
    # @param [Length,Numeric] value  The new x, y or z value.
    # @return [Length,Numeric] The argument passed for the new value.
    # @raise IndexError  Raised if the index is outside the range [0,2]. Note that negative indices [-3,-1] don't raise.
    def []=(index, value)
    end

    # Creates another point identical to the point being cloned.
    # @return [Geom::Point3d] A new point that is a copy of this one.
    def clone
    end

    # Compute the distance from this point to another point.
    # @param [Geom::Point3d,Array] point2  The Point3d object to compute the distance to.
    # @return [Length] The distance as length object.
    def distance(point2)
    end

    # Computes the distance from this point to a line.
    # @param [Array(Geom::Point3d,Geom::Vector3d),Array()Geom::Point3d,Geom::Point3d)] line
    # @return [Length] The distance as length object.
    def distance_to_line(line)
    end

    # Computes the distance from this point to a plane.
    # @param [Array(Geom::Point3d,Geom::Vector3d),Array<Numeric>] plane
    # @return [Length] The distance as length object.
    def distance_to_plane(plane)
    end

    # Returns a string containing a human-readable representation of this point.
    # @return [String] A string representation of the point
    def inspect
    end

    # Creates a new point as a linear combination of two points. This method is generally used to get a point at some
    # percentage along a line connecting the two points. The weights should sum up to 1 if you want to get a on that
    # line. The weights should be between 0 and 1 if you want to get a point between the two points.
    # @param [Numeric] weight1  The weight of point1.
    # @param [Geom::Point3d,Array<Numeric>] point1
    # @param [Numeric] weight2  The weight of point2.
    # @param [Geom::Point3d,Array<Numeric>] point2
    # @return [Geom::Point3d]
    def self.linear_combination(weight1, point1, weight2, point2)
    end

    # Creates a new 3D point.
    # @overload self.new()
    #   Creates a point at the origin with all coordinates set to zero.
    # @overload self.new(point)
    #   @param [Geom::Point3d] point  another point
    # @overload self.new(array)
    #   @param [Array<Length,Numeric>] array  an array of two or three coordinates
    # @overload self.new(x, y, z=0)
    #   @param [Length,Numeric] x  the x coordinate
    #   @param [Length,Numeric] y  the y coordinate
    #   @param [Length,Numeric] z  the z coordinate
    def self.new(*args)
    end

    # Offsets a point by a vector and returns a new point. The length of the vector must not be zero.
    # @param [Geom::Vector3d,Array<Numeric>] vector  A vector providing direction and distance to offset the point by.
    # @param [Length,Numeric] length  The distance to offset. If not provided, the offset is equal to the vector length.
    # @return [Geom::Point3d] a new Point3d object
    def offset(vector, length=vector.length)
    end

    # Applies an offset by a vector to this point. The length of the vector must not be zero.
    # @param [Geom::Vector3d,Array<Numeric>] vector  A vector providing direction and distance to offset the point by.
    # @param [Length,Numeric] length  The distance to offset. If not provided, the offset is equal to the vector length.
    # @return [self]
    def offset!(vector, length=vector.length)
    end

    # Determines if this point is on a line.
    # @param [Array(Geom::Point3d,Geom::Vector3d),Array(Geom::Point3d,Geom::Point3d)] line
    # @return [Boolean] true if the point is on the line; false if the point is not on the line
    def on_line?(line)
    end

    # Determines if this point is on a plane.
    # @param [Array(Geom::Point3d,Geom::Vector3d),Array<Numeric>] plane
    # @return [Boolean] true if the point is on the plane; false if the point is not on the plane
    def on_plane?(plane)
    end

    # Retrieves the point on a line that is closest to this point.
    # @param [Array(Geom::Point3d,Geom::Vector3d),Array(Geom::Point3d,Geom::Point3d)] line
    # @return [Geom::Point3d] A new point that is on a line closest to the point
    def project_to_line
    end

    # Retrieves the point on a plane that is closest to this point.
    # @param [Array(Geom::Point3d,Geom::Vector3d),Array<Numeric>] plane
    # @return [Geom::Point3d] A new point that is on a plane closest to the point
    def project_to_plane
    end

    # Sets the values of this point.
    # @param [Length,Numeric] x  The location along the x axis.
    # @param [Length,Numeric] y  The location along the y axis. If not given, this coordinate is not modified.
    # @param [Length,Numeric] z  The location along the z axis. If not given, this coordinate is not modified.
    # @return [self]
    def set!(x, y=self.x, z=self.y)
    end

    # Returns an array representation of this point.
    # @return [Array(Length,Length,Length)] An array containing its x, y, z coordinates
    def to_a
    end

    # Returns a string representation of this point.
    # @return [String] A string of this point in the current model units, using the user's locale's decimal delimiter.
    def to_s
    end

    # Applies a transformation to a copy this point to create a new point.
    # @param [Geom::Transformation] transformation  A Transformation object.
    # @return [Geom::Point3d] The new point
    def transform(transformation)
    end

    # Applies a transformation to this point.
    # Unlike the {#transform} method, the point itself is modified.
    # @param [Geom::Transformation] transformation  A Transformation object.
    # @return [self]
    def transform!(transformation)
    end

    # Creates a vector between this point and another point.
    # @param [Geom::Point3d,Array<Numeric>] point2  The other point
    # @return [Geom::Vector3d]
    def vector_to(point2)
    end

    # Retrieves the x coordinate of this point.
    # @return [Length]
    def x
    end

    # Sets the x value of this point.
    # @param [Length,Numeric] value  The new x coordinate.
    # @return [Length,Numeric] The argument passed for the new value.
    def x=(value)
    end

    # Retrieves the y coordinate of this point.
    # @return [Length]
    def y
    end

    # Sets the y value of this point.
    # @param [Length,Numeric] value  The new y coordinate.
    # @return [Length,Numeric] The argument passed for the new value.
    def y=(value)
    end

    # Retrieves the z  coordinate of this point.
    # @return [Length]
    def z
    end

    # Sets the z value of this point.
    # @param [Length,Numeric] value  The new z coordinate.
    # @return [Length,Numeric] The argument passed for the new value.
    def z=(value)
    end

  end
end
