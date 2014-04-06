# @since SketchUp 6.0
#
# In addition to the built-in {http://www.ruby-doc.org/core-1.8.6/Array.html Ruby Array}
# methods, the following methods have been added by SketchUp.
#
# @note In SketchUp, Arrays may be used in place of either Point3d and
#       Vector3d objects depending on  how they are used.
class Array

  # @params other - Vector3d or Array
  # @return [Vector3d]
  def cross(other)
  end

  # Returns the distance between this Point3d and the given Point3d.
  #
  # @param [Sketchup::Point3d]
  #
  # @example
  #   [0, 0].distance([1, 1])
  #   ==> 1.4142135623731
  #
  #   ORIGIN.distance([1,1,1])
  #   ==> 1.73205080756888
  #
  # @return [Sketchup::Length] 
  def distance(pt3d_or_array)
  end

  def distance_to_line
  end
  def distance_to_plane
  end

  # Compute the cross product.
  #
  # @example
  #   [0, 0, 1].dot([0, 1, 0])
  #   ==> 0.0
  # @params [other] Array
  #
  # @return [Numeric]
  def dot(other)
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
  # Returns the first element of an Array.
  # @example
  #   [1, 2, 3].x
  #   ==> 1
  # @return [Numeric] x
  def x
    self[0]
  end
  
  # Set the x component of the array
  # @return [Numeric] the x coordinate, or component.
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
