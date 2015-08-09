module Geom
class PolygonMesh

  NO_SMOOTH_OR_HIDE     = 0
  HIDE_BASED_ON_INDEX   = 1 # (Negative point index will hide the edge.)
  SOFTEN_BASED_ON_INDEX = 2 # (Negative point index will soften the edge.)
  AUTO_SOFTEN           = 4 # (Interior edges are softened.)
  SMOOTH_SOFT_EDGES     = 8 # (All soft edges will also be smooth.)

  def add_point
  end
  def add_polygon
  end
  def count_points
  end
  def count_polygons
  end
  def new
  end
  def normal_at
  end
  def point_at
  end
  def point_index
  end
  def points
  end
  def polygon_at
  end
  def polygon_points_at
  end
  def polygons
  end
  def set_point
  end

  # @param [Integer] index
  # @param [Geom::Point3d] uv
  # @param [Boolean] front
  #
  # @since SketchUp 2014
  def set_uv(index, uv, front)
  end

  def transform!
  end

  # @param [Integer] index
  # @param [Boolean] front
  #
  # @return [Geom::Point3d]
  def uv_at(index, front)
  end

  def uvs
  end

end # class PolygonMesh
end # module Geom
