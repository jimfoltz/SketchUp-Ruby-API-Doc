module Geom
  class Point3d

    # @overload initialize(x = 0.0, y = 0.0, z = 0.0)
    #   @param [Numeric] x
    #   @param [Numeric] y
    #   @param [Numeric] z
    # @overload initialize(point)
    #   @param [Geom::Point3d] point
    # @overload initialize(point)
    #   @param [Array] array
    def initialize(*args)
    end

    # @param [Geom::Vector3d] vector
    # @return [Geom::Point3d]
    def +(vector)
    end

    # @param [Geom::Point3d] point
    # @return [Vector3d]
    def -(point)
    end

    # @param [Geom::Point3d, Array] point
    # @return [Boolean] true if point is closer to the ORIGIN
    def < (point)
    end

    # @param [Geom::Point3d, Array] point
    # @return [Boolean]
    def ==(point)
    end

    # @param [Integer] index
    # @return [Length]
    def []
    end

    # @param [Integer] index
    # @param [Length] value
    # @return [Length]
    def []=(index, value)
    end

    # @return [Geom::Point3d]
    def clone
    end

    # @param [Geom::Point3d, Array] point
    # @return [Length]
    def distance(point)
    end

    # @param [Array] line
    # @return [Length]
    def distance_to_line(line)
    end

    # @param [Array] plane
    # @return [Length]
    def distance_to_plane(plane)
    end

    # @param [Float] weight1
    # @param [Geom::Point3d, Array] point1
    # @param [Float] weight2
    # @param [Geom::Point3d, Array] point2
    # @return [Geom::Point3d]
    def linear_combination(weight1, point1, weight2, point2)
    end

    # @param [Geom::Vector3d, Array] vector
    # @param [Length] length
    # @return [Geom::Point3d]
    def offset(vector, length = nil)
    end

    # @param [Geom::Vector3d, Array] vector
    # @param [Length] length
    # @return [Geom::Point3d]
    def offset!(vector, length = nil)
    end

    # @param [Array] line
    # @return [Boolean]
    def on_line?(line)
    end

    # @param [Array] plane
    # @return [Boolean]
    def on_plane?(plane)
    end

    # @param [Array] line
    # @return [Geom::Point3d]
    def project_to_line(line)
    end

    # @param [Array] plane
    # @return [Geom::Point3d]
    def project_to_plane(plane)
    end

    # @param [Length] x
    # @param [Length] y
    # @param [Length] z
    # @return [Geom::Point3d]
    def set!(x, y, z)
    end

    # @return [Array(Float, Float, Float)]
    def to_a
    end

    # @param [Geom::Transformation] transformation
    # @return [Geom::Point3d]
    def transform(transformation)
    end

    # @param [Geom::Transformation] transformation
    # @return [Geom::Point3d]
    def transform!(transformation)
    end

    # @param [Geom::Point3d] point
    # @return [Geom::Vector3d]
    def vector_to(point)
    end

    # @return [Length]
    def x
    end

    # @param [Length] value
    # @return [Length]
    def x=(value)
    end

    # @return [Length]
    def y
    end

    # @param [Length] value
    # @return [Length]
    def y=(value)
    end

    # @return [Length]
    def z
    end

    # @param [Length] value
    # @return [Length]
    def z=(value)
    end

  end
end
