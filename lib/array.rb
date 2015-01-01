# The SketchUp Array class adds additional methods to the standard Ruby Array
# class. Specifically, it contains methods allowing an array to behave just as a
# {Geom::Vector3d} or {Geom::Point3d} object (which can be thought of as arrays
# of 3 coordinate values). Therefore, you can use the Array class in place of a
# {Geom::Point3d} or {Geom::Vector3d} as a way to pass coordinate values.
#
# In addition to the built-in {http://www.ruby-doc.org/core-2.0.0/Array.html Ruby Array}
# methods, the following methods have been added by SketchUp.
#
# @note In SketchUp, Arrays may be used in place of either {Geom::Point3d} and
#   {Geom::Vector3d} objects depending on how they are used.
#
# @example
#   # An array of 3 values can represent a 1" long vector pointing straight
#   # up in the z-direction.
#   array = [0, 0, 1]
#
#   # An array of 3 values can also represent a point 1" above the origin in
#   # the z direction. (Note that this is the exact same array.)
#   array = [0, 0, 1]
#
#   # How it is interpreted is based on context. For example, this code will
#   # create a construction point at position 0, 0, 1, since in this context
#   # a Point3d is expected.
#   entities = Sketchup.active_model.entities
#   construction_point = entities.add_cpoint(array)
#
#   # Whereas this will move our construction point 1" upward, since in this
#   # context a Vector3d is expected.
#   transformation = Geom::Transformation.new(array)
#   entities.transform_entities(transformation, construction_point)
#
# @see http://www.sketchup.com/intl/en/developer/docs/ourdoc/array Array Docs
#
# @since SketchUp 6.0
class Array

  # Compute the cross product between two vectors, particularly this vector and
  # the given vector.
  #
  # @example
  #   vector1 = Geom::Vector3d.new(0, 1, 0)
  #   array = [1, 0, 0]
  #   This will return a new Vector3d
  #   vector2 = array.cross(vector1)
  #
  # @param [Geom::Vector3d, Array<Numeric>] vector
  #
  # @return [Vector3d] Computed cross product.
  def cross(vector)
  end

  # Compute the distance between this point and the given point.
  #
  # @example
  #   [0,0].distance([1,1]) # ==> 1.414
  #   ORIGIN.distance([1,1,1]) # ==> 1.732
  #
  # @example
  #   point = Geom::Point3d.new(10, 10, 10)
  #   array = [1, 1, 1]
  #   # This will return a Length
  #   distance = array.distance(point)
  #
  # @param [Geom::Point3d, Array<Numeric>] point
  #
  # @return [Length] Computed distance.
  def distance(point)
  end

  # Compute the distance from the current point to a line. Lines are defined by
  # an array of a point and a vector or an array of two points. See the {Geom}
  # module for instructions on how to create a line.
  #
  # @example
  #   line = [Geom::Point3d.new(0, 0, 0), Geom::Vector3d.new(0, 0, 1)]
  #   array = [10, 10, 10]
  #   # This will return a Length
  #   distance = array.distance_to_line(line)
  #
  # @param [Array<(Geom::Point3d, Geom::Vector3d)>, Array<(Geom::Point3d, Geom::Point3d)>] line
  #   An array with a {Geom::Point3d} object and a {Geom::Vector3d} object or an
  #   array with two {Geom::Point3d} objects representing the line.
  #
  # @return [Length] Computed distance.
  def distance_to_line(line)
  end

  # Compute the distance from the current point to a plane. See the {Geom}
  # module for instructions on how to create a plane.
  #
  # @example
  #   plane = [Geom::Point3d.new(0, 0, 0), Geom::Vector3d.new(0, 0, 1)]
  #   array = [10, 10, 10]
  #   # This will return a Length
  #   distance = array.distance_to_plane(plane)
  #
  # @param [Array<(Geom::Point3d, Geom::Vector3d)>] plane An array with a
  #   {Geom::Point3d} object and a {Geom::Vector3d} object representing the
  #   plane.
  #
  # @return [Length] Computed distance.
  def distance_to_plane(plane)
  end

  # Compute the dot product between the current and the specified vector.
  #
  # @example
  #   [0, 0, 1].dot([0, 1, 0]) # ==> 0.0
  #
  # @example
  #   vector = Geom::Vector3d.new(0, 1, 0)
  #   array = [1, 0, 0]
  #   # This will return a Float, in this case 22.0
  #   dot_product = array.dot(vector)
  #
  # @param [Vector3d] vector
  #
  # @return [Float] Computed dot product.
  def dot(vector)
  end

  # Normalize the current vector (setting its length to one). It returns a new
  # array rather than changing the original in place.
  #
  # @example
  #   array = [1, 2, 3]
  #   # This will return a new Array
  #   normal_vector = array.normalize
  #
  # @return [Array] A new array representing the normalized vector.
  def normalize
  end

  # Normalize the current vector in place (settings its length to one).
  #
  # @example
  #   array = [1, 2, 3]
  #   # This will modify the 'array' in place.
  #   normal_vector = array.normalize!
  #
  # @return [Array] The current array with the normalized vector.
  def normalize!
  end

  # Offset current point by a vector. This returns a new array rather than
  # modifying the original in place.
  #
  # @example
  #   array = [10, 10, 10]
  #   vector = Geom::Vector3d.new(0, 0, 1)
  #   # This will return a new Array
  #   point = array.offset(vector)
  #
  # @param [Geom::Vector3d, Array<Numeric>] vector
  #
  # @return [Array] The newly offset array.
  def offset(vector)
  end

  # Offset current point by a vector in place. This modifies the current array.
  #
  # @example
  #   array = [10, 10, 10]
  #   vector = Geom::Vector3d.new(0, 0, 1)
  #   # This will modify 'array' in place.
  #   point = array.offset!(vector)
  #
  # @param [Geom::Vector3d, Array<Numeric>] vector
  #
  # @return [Array] The current offset array.
  def offset!(vector)
  end

  # Determine if the current point is on the given line. See the {Geom} module
  # for instructions on how to create a line.
  #
  # @example
  #   line = [Geom::Point3d.new(0, 0, 0), Geom::Vector3d.new(0, 0, 1)]
  #   array = [10, 10, 10]
  #   # This will return a true or false value
  #   on_plane = array.on_line?(line)
  #
  # @param [Array<(Geom::Point3d, Geom::Vector3d)>, Array<(Geom::Point3d, Geom::Point3d)>] line
  #   An array with a {Geom::Point3d} object and a {Geom::Vector3d} object or an
  #   array with two {Geom::Point3d} objects representing the line.
  #
  # @return [Boolean] +true+ if the point is on the line or +false+ if the point
  #   is not on the line.
  def on_line?(line)
  end

  # Determine if the current point is on the given plane. See the {Geom} module
  # for instructions on how to create a plane.
  #
  # @example
  #   plane = [Geom::Point3d.new(0, 0, 0), Geom::Vector3d.new(0, 0, 1)]
  #   array = [10, 10, 10]
  #   # This will return false because the current point is not on the plane.
  #   on_plane = array.on_plane?(plane)
  #
  # @param [Array<(Geom::Point3d, Geom::Vector3d)>] plane An array with a
  #   {Geom::Point3d} object and a {Geom::Vector3d} object representing the
  #   plane.
  #
  # @return [Boolean] +true+ if the point is on the plane or +false+ if the
  #   point is not on the plane.
  def on_plane?(plane)
  end

  # Project point onto a line. See the {Geom} module for instructions on how to
  # create a line.
  #
  # @example
  #   line = [Geom::Point3d.new(0, 0, 0), Geom::Vector3d.new(0, 0, 1)]
  #   array = [10, 10, 10]
  #   # This will return a new Array
  #   point_on_line = array.project_to_line(line)
  #
  # @param [Array<(Geom::Point3d, Geom::Vector3d)>, Array<(Geom::Point3d, Geom::Point3d)>] line
  #   An array with a {Geom::Point3d} object and a {Geom::Vector3d} object or an
  #   array with two {Geom::Point3d} objects representing the line.
  #
  # @return [Array] A new point on the line that is closest to this point if
  #   successful.
  def project_to_line(line)
  end

  # Project point onto a plane. See the {Geom} module for instructions on how to
  # create a plane.
  #
  # @example
  #   plane = [Geom::Point3d.new(0, 0, 0), Geom::Vector3d.new(0, 0, 1)]
  #   array = [10, 10, 10]
  #   # This will return a new Array
  #   point_on_line = array.project_to_plane(plane)
  #
  # @param [Array<(Geom::Point3d, Geom::Vector3d)>] plane An array with a
  #   {Geom::Point3d} object and a {Geom::Vector3d} object representing the
  #   plane.
  #
  # @return [Array] A new point on the plane that is closest to this point if
  #   successful.
  def project_to_plane(plane)
  end

  # Apply {Geom::Transformation} object to the current point defined by an
  # {Array} object. This method returns a new transformed point rather than
  # modifying the current point.
  #
  # @example
  #   point = Geom::Point3d.new(10, 20, 30)
  #   transform = Geom::Transformation.new(point)
  #   array = [1, 2, 3]
  #   # This will return a new Array
  #   array.transform(transform)
  #
  # @param [Geom::Transformation] transformation
  #
  # @return [Array] The newly transformed point.
  def transform(transformation)
  end

  # Apply {Geom::Transformation} object to the current point defined by an
  # {Array} object. This method modifies the current point.
  #
  # @example
  #   point = Geom::Point3d.new(10, 20, 30)
  #   transform = Geom::Transformation.new(point)
  #   array = [1, 2, 3]
  #   # This will modify 'array' in place
  #   array.transform!(transform)
  #
  # @param [Geom::Transformation] transformation
  #
  # @return [Array] The current transformed point.
  def transform!(transformation)
  end

  # Compute vector from the current point to the given point.
  #
  # @example
  #   point = Geom::Point3d.new(10, 20, 30)
  #   array = [1, 2, 3]
  #   # This will return a new Vector3d
  #   vector = array.vector_to(point)
  #
  # @param [Geom::Point3d, Array<Numeric>] point
  #
  # @return [Geom::Vector3d]
  def vector_to(point)
  end

  # Get the X coordinate or the first element of the array.
  #
  # @example
  #   [1, 2, 3].x # ==> 1
  #
  # @example
  #   array = [1, 2, 3]
  #   # This will return a Fixnum, in this case 1
  #   x = array.x
  #
  #   array = [1.0, 2.0, 3.0]
  #   # This will return a Float, in this case 1.0
  #   x = array.x
  #
  # @return [Numeric] The X coordinate or the first element.
  def x
  end

  # Set the X coordinate or the first element of the array.
  #
  # @example
  #   array = [1, 2, 3]
  #   # This will initialize the x value as a Float
  #   array.x = 2.5
  #   # This will initialize the x value as a Fixnum
  #   array.x = 5
  #
  # @return [Object] The newly assigned value.
  def x=
  end

  # Get the Y coordinate or the second element of the array.
  #
  # @example
  #   [1, 2, 3].y # ==> 2
  #
  # @example
  #   array = [1, 2, 3]
  #   # This will return a Fixnum, in this case 2
  #   y = array.y
  #
  #   array = [1.0, 2.0, 3.0]
  #   # This will return a Float, in this case 2.0
  #   y = array.y
  #
  # @return [Numeric] The Y coordinate or the second element.
  def y
  end

  # Set the Y coordinate or the second element of the array.
  #
  # @example
  #   array = [1, 2, 3]
  #   # This will initialize the y value as a Float
  #   array.y = 2.5
  #   # This will initialize the y value as a Fixnum
  #   array.y = 5
  #
  # @return [Object] The newly assigned value.
  def y=
  end

  # Get the Z coordinate or the third element of the array.
  #
  # @example
  #   [1, 2, 3].z # ==> 2
  #
  # @example
  #   array = [1, 2, 3]
  #   # This will return a Fixnum, in this case 3
  #   z = array.z
  #
  #   array = [1.0, 2.0, 3.0]
  #   # This will return a Float, in this case 3.0
  #   z = array.z
  #
  # @return [Numeric] The Z coordinate or the third element.
  def z
  end

  # Set the Z coordinate or the third element of the array.
  #
  # @example
  #   array = [1, 2, 3]
  #   # This will initialize the z value as a Float
  #   array.z = 2.5
  #   # This will initialize the z value as a Fixnum
  #   array.z = 5
  #
  # @return [Object] The newly assigned value.
  def z=
  end

end # class Array
