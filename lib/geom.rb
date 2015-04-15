module Geom

  # @param [Array] line1
  # @param [Array] line2
  #
  # @return [Array(Geom::Point3d, Geom::Point3d)]
  def self.closest_points(line1, line2)
  end


  # @param [Array<Geom::Point3d>] points
  #
  # @return [Array(Geom::Point3d, Geom::Point3d)]
  def self.fit_plane_to_points(*points)
  end

  # @param [Array] line1
  # @param [Array] line2
  #
  # @return [Geom::Point3d, Nil]
  def self.intersect_line_line
  end

  # @param [Array] line
  # @param [Array] plane
  #
  # @return [Geom::Point3d, Nil]
  def self.intersect_line_plane(line, plane)
  end

  # @param [Array] plane1
  # @param [Array] plane2
  #
  # @return [Geom::Point3d, Nil]
  def self.intersect_plane_plane(plane1, plane2)
  end

  # @overload linear_combination(weight1, point1, weight2, point2)
  #   @param [Numeric] weight1
  #   @param [Geom::Point3d] point1
  #   @param [Numeric] weight2
  #   @param [Geom::Point3d] point2
  #
  #   @return [Geom::Point3d]
  #
  # @overload linear_combination(weight1, vector1, weight2, vector2)
  #   @param [Numeric] weight1
  #   @param [Geom::Vector3d] vector1
  #   @param [Numeric] weight2
  #   @param [Geom::Vector3d] vector2
  #
  #   @return [Geom::Vector3d]
  def self.linear_combination(weight1, point1, weight2, point2)
  end

  # @param [Geom::Point3d] point
  # @param [Array<Geom::Point3d>] polygon
  # @param [Boolean] border
  #
  # @return [Boolean]
  def self.point_in_polygon_2D(point, polygon, border)
  end

end
