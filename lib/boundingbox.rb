module Geom

  # Bounding boxes are three-dimensional boxes (eight corners), aligned with the
  # global axes, that surround entities within your model. There is a default
  # bounding box for any new model that will surround all entities, including
  # all groups and components. Additionally, there are bounding boxes for
  # {Sketchup::Drawingelement} objects, including components and groups.
  # Bounding boxes are only large enough to exactly bound the entities within
  # your model, group, or component.
  #
  # @note The bounding box returned for Face Me components is the center of its
  #   entire range of motion. This behavior changed in SketchUp 7.1. In 7.0 and
  #   earlier, the <tt>Sketchup::Drawingelement.#bounds</tt> method would return
  #   the bounds around the Face Me component's current, visible center.
  #
  # You can also create arbitrary {BoundingBox} objects by calling
  # <tt>BoundingBox.new</tt>.
  #
  # @example
  #   # You can get the bounding box on a model.
  #   model = Sketchup.active_model
  #   model_bb = model.bounds
  #
  #   # Or you can get the bounding box on any Drawingelement object.
  #   first_entity = model.entities[0]
  #   first_entity_bb = first_entity.bounds
  #
  #   # Or you can create an empty bounding box of your own.
  #   bounding_box = Geom::BoundingBox.new
  #
  # @see http://www.sketchup.com/intl/en/developer/docs/ourdoc/boundingbox BoundingBox Docs
  #
  # @since SketchUp 6.0
  class BoundingBox

    # Create a new, empty, bounding box.
    #
    # @example
    #   bounding_box = Geom::BoundingBox.new
    def initialize
    end

    # Add a point, vertex, or other bounding boxes to the bounding box. The size
    # of the bounding box will increase as necessary to accommodate the new
    # items.
    #
    # Adding one point to an empty bounding box does not increase the size of
    # the bounding box. You must add at least two points before methods such as
    # <tt>BoundingBox.#diagonal</tt> will return a size greater than zero.
    #
    # @example
    #   model = Sketchup.active_model
    #   bounding_box = model.bounds
    #   point1 = Geom::Point3d.new(100, 200, 300)
    #   point2 = Geom::Point3d.new(200, 400, 200)
    #   bounding_box.add(point1, point2)
    #
    # @param [Geom::Point3d, Sketchup::Vertex, Geom::BoundingBox] things A list
    #   or single instance of {Point3d}, {Sketchup::Vertex}, or {BoundingBox}
    #   objects.
    #
    # @return [Geom::BoundingBox] The current {BoundingBox} object.
    def add(things)
    end

    # Get the center point of the bounding box.
    #
    # @example
    #   bounding_box = Geom::BoundingBox.new
    #   bounding_box.add([100, 200, -400], [200, 400, 100])
    #   # This will return a point Point3d(150, 300, -150).
    #   point = bounding_box.center
    #
    # @return [Geom::Point3d] The center point of the BoundingBox.
    def center
    end

    # Remove all points from the bounding box. A cleared BoundingBox does not
    # have an points; therefore, the size is zero.
    #
    # @example
    #   bounding_box = Geom::BoundingBox.new
    #   bounding_box.add([100, 200, -400], [200, 400, 100])
    #
    #   # This will return false.
    #   bounding_box.empty?
    #
    #   bounding_box.clear
    #
    #   # This will return true.
    #   bounding_box.empty?
    #
    # @return [Geom::BoundingBox] The current {BoundingBox} object.
    def clear
    end

    # Determine if the current bounding box  contains a specific {Point3d} or
    # {BoundingBox} object.
    #
    # @example
    #   bounding_box = Geom::BoundingBox.new
    #   bounding_box.add([100, 200, -400], [200, 400, 100])
    #   # This will return false.
    #   bounding_box.contains?([300, 100, 400])
    #   # This will return true.
    #   bounding_box.contains?([150, 300, -200])
    #
    # @param [Array<Numeric>, Geom::Point3d, Geom::BoundingBox] thing
    #
    # @return [Boolean] +true+ if the bounding box contains the specified thing
    #   or +false+ if not.
    def contains?(thing)
    end

    # Get point at specified corner of the bounding box.
    #
    # There are 8 corners to a bounding box, identified by the numbers 0..7.
    # Points are returned in the currently set units (inches by default).
    #
    # These are which index refers to which corner:
    #   0 = [0, 0, 0] (left front bottom)
    #   1 = [1, 0, 0] (right front bottom)
    #   2 = [0, 1, 0] (left back bottom)
    #   3 = [1, 1, 0] (right back bottom)
    #   4 = [0, 0, 1] (left front top)
    #   5 = [1, 0, 1] (right front top)
    #   6 = [0, 1, 1] (left back top)
    #   7 = [1, 1, 1] (right back top)
    #
    # @example
    #   bounding_box = Geom::BoundingBox.new
    #   bounding_box.add([100, 200, -400], [200, 400, 100])
    #   # This will return Point3d(100, 200, -400).
    #   bounding_box.corner(0)
    #   # This will return Point3d(100, 200, -400).
    #   bounding_box.corner(6)
    #
    # @param [Fixnum] n A number between 0 and 7.
    #
    # @return [Geom::Point3d] The position of the corner at _n_.
    def corner(n)
    end

    # Get the depth of the bounding box.
    #
    # The depth is returned in the currently set units (inches by default).
    #
    # @example
    #   bounding_box = Geom::BoundingBox.new
    #   bounding_box.add([100, 200, -400], [200, 400, 100])
    #   # This will return a Length of 500.0".
    #   length = bounding_box.depth
    #
    # @return [Length] The depth of the bounding box in currently set units.
    def depth
    end

    # Get the length of the diagonal of the bounding box.
    #
    # The diagonal is returned in the currently set units (inches by default).
    #
    # @example
    #   bounding_box = Geom::BoundingBox.new
    #   bounding_box.add([100, 200, -400], [200, 400, 100])
    #   # This will return a Length of ~547.72".
    #   length = bounding_box.diagonal
    #
    # @return [Length] The diagonal of the bounding box in currently set units.
    def diagonal
    end

    # Determine if the bounding box is empty, such as if the bounds have not
    # been set. This is the opposite of the {#valid?} method.
    #
    # @example
    #   bounding_box = Geom::BoundingBox.new
    #   bounding_box.add([100, 200, -400], [200, 400, 100])
    #   # This will return false.
    #   bounding_box.empty?
    #
    # @return [Boolean] +true+ if the bounding box is empty or +false+ if filed.
    def empty?
    end

    # Get the height of the bounding box.
    #
    # The height is returned in the currently set units (inches, by default).
    #
    # @example
    #   bounding_box = Geom::BoundingBox.new
    #   bounding_box.add([100, 200, -400], [200, 400, 100])
    #   # This will return a Length of 200.0".
    #   length = bounding_box.height
    #
    # @return [Length] The height of the bounding box in currently set units.
    def height
    end

    # Intersect this bounding box with another bounding box. This method returns
    # a new bounding box object rather than modifying the current one.
    #
    # @note Prior to SU2015 this method would return incorrect result in some
    #   cases. For correct result in these versions you must first check if the
    #   bounding boxes actually overlap - then call this to get the resulting
    #   bounding box.
    #
    # @example
    #   boundingbox1 = Geom::BoundingBox.new
    #   boundingbox1.add([100, 200, -400], [200, 400, 300])
    #   boundingbox2 = Geom::BoundingBox.new
    #   boundingbox2.add([150, 350, 100], [200, 400, 500])
    #   # The returned boundingbox is a result of the intersection of the two.
    #   boundingbox = boundingbox1.intersect(boundingbox2)
    #
    # @param [Geom::BoundingBox] other_bounding_box THe other bounding box,
    #   which might intersect with this bounding box.
    #
    # @return [Geom::BoundingBox] The resulting BoundingBox object.
    def intersect(other_bounding_box)
    end

    # Get the maximum point in the bounding box.
    #
    # @note If you attempt to call this method on an empty bounding box, you
    #   will receive a point consisting of very large negative numbers.
    #
    # @example
    #   bounding_box = Geom::BoundingBox.new
    #   bounding_box.add([100, 200, -400], [700, 900, 800], [200, 400, 100])
    #   # This will return a point Point3d(700, 900, 800).
    #   point = bounding_box.max
    #
    # @return [Geom::Point3d] The point where x, y, and z are the maximum in the
    #   bounding box.
    def max
    end

    # Get the minimum point in the bounding box.
    #
    # @note If you attempt to call this method on an empty bounding box, you
    #   will receive a point consisting of very large negative numbers.
    #
    # @example
    #   bounding_box = Geom::BoundingBox.new
    #   bounding_box.add([100, 200, -400], [700, 900, 800], [200, 400, 100])
    #   # This will return a point Point3d(100, 200, -400).
    #   point = bounding_box.min
    #
    # @return [Geom::Point3d] The point where x, y, and z are the minimum in the
    #   bounding box.
    def min
    end

    # Determine if the bounding box is valid (contains points). This method is
    # the opposite of the {#empty?} method.
    #
    # @example
    #   bounding_box = Geom::BoundingBox.new
    #   bounding_box.add([100, 200, -400], [200, 400, 100])
    #   # This will return true.
    #   bounding_box.valid?
    #
    # @return [Boolean] +true+ if filled or +false+ if empty.
    def valid?
    end

    # Get the width of the bounding box.
    #
    # The width is returned in the currently set units (inches by default).
    #
    # @example
    #   bounding_box = Geom::BoundingBox.new
    #   bounding_box.add([100, 200, -400], [200, 400, 100])
    #   # This will return a Length of 100.0".
    #   length = bounding_box.width
    #
    # @return [Length] The width of the bounding box in currently set units.
    def width
    end

  end # class BoundingBox
end #module Geom
