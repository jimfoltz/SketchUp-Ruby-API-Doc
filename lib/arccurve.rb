module Sketchup

  # An {ArcCurve} is a {Curve} that makes up part of a circle. This is the
  # underlying class for circles as well.
  #
  # You can think of ArcCurves as entities that were created with SketchUp's Arc
  # or Circle drawing tools and Curves as entities that were created with the
  # Freehand drawing tool.
  #
  # However, keep in mind that all Curves in SketchUp are really edges with some
  # extra data attached to them. When you use the API to draw a {Curve} or
  # {ArcCurve}, you are really drawing edges.
  #
  # {ArcCurve} is a subclass of {Curve}, so all of the methods that are
  # available to Curves are also available to ArcCurves.
  #
  # @example
  #   # Draw a circle on the ground plane around the origin.
  #   center_point = Geom::Point3d.new(0,0,0)
  #   normal_vector = Geom::Vector3d.new(0,0,1)
  #   radius = 10
  #
  #   entities = Sketchup.active_model.entities
  #   edge_array = entities.add_circle center_point, normal_vector, radius
  #   first_edge = edge_array[0]
  #   arc_curve = first_edge.curve
  #
  # @see http://www.sketchup.com/intl/en/developer/docs/ourdoc/arccurve ArcCurve Docs
  #
  # @since SketchUp 6.0
  class ArcCurve < Curve

    # Get center of the circular arc.
    #
    # @example
    #   center_point = Geom::Point3d.new
    #   # Create a circle perpendicular to the normal or Z axis
    #   vector = Geom::Vector3d.new 0,0,1
    #   vector2 = vector.normalize!
    #   model = Sketchup.active_model
    #   entities = model.entities
    #   edge_array = entities.add_circle center_point, vector2, 10
    #   edge = edge_array[0]
    #   arc_curve = edge.curve
    #   point = arc_curve.center
    #
    # @return [Geom::Point3d] center of the arc if successful.
    def center
    end

    # Get the angle of the end of the arc measured from the X axis in radians.
    #
    # @example
    #   # Create a 1/2 circle, normal to the Z axis
    #   center = Geom::Point3d.new
    #   normal = Geom::Vector3d.new 0,0,1
    #   xaxis = Geom::Vector3d.new 1,0,0
    #   start_a = 0.0
    #   end_a = Math::PI
    #   model = Sketchup.active_model
    #   entities = model.entities
    #   edge_array = entities.add_arc center, xaxis, normal, 5, start_a, end_a
    #   edge = edge_array[0]
    #   arc_curve = edge.curve
    #   end_angle = arc_curve.end_angle
    #
    # @return [Numeric] the angle of the end of the arc (in radians) if
    #   successful.
    def end_angle
    end

    # Get arc normal, the vector that is perpendicular to the plane of the arc.
    #
    # @example
    #   center_point = Geom::Point3d.new
    #   # Create a circle perpendicular to the normal or Z axis
    #   vector = Geom::Vector3d.new 0,0,1
    #   vector2 = vector.normalize!
    #   model = Sketchup.active_model
    #   entities = model.entities
    #   edge_array = entities.add_circle center_point, vector2, 10
    #   edge = edge_array[0]
    #   arc_curve = edge.curve
    #   v = arc_curve.normal
    #
    # @return [Geom::Vector3d] the normal of the arc if successful.
    def normal
    end

    # Get arc plane.
    #
    # @note Refer to the {Geom} module for instructions to create a plane.
    #
    # @example
    #   center_point = Geom::Point3d.new
    #   # Create a circle perpendicular to the normal or Z axis
    #   vector = Geom::Vector3d.new 0,0,1
    #   vector2 = vector.normalize!
    #   model = Sketchup.active_model
    #   entities = model.entities
    #   edge_array = entities.add_circle center_point, vector2, 10
    #   edge = edge_array[0]
    #   arc_curve = edge.curve
    #   plane = arc_curve.plane
    #
    # @return [Array<Numeric>] An a array of four values representing the plane
    #   of the arc curve.
    def plane
    end

    # Get arc radius.
    #
    # @example
    #   center_point = Geom::Point3d.new
    #   # Create a circle perpendicular to the normal or Z axis
    #   vector = Geom::Vector3d.new 0,0,1
    #   vector2 = vector.normalize!
    #   model = Sketchup.active_model
    #   entities = model.entities
    #   edge_array = entities.add_circle center_point, vector2, 10
    #   edge = edge_array[0]
    #   arc_curve = edge.curve
    #   radius = arc_curve.radius
    #
    # @return [Numeric] the radius of the arc if successful.
    def radius
    end

    # Get the angle of the start of the arc, measured from the X axis in
    # radians.
    #
    # @example
    #   # Create a 1/4 circle, radius of 5, normal to the Z axis
    #   center = Geom::Point3d.new 0, 0, -1
    #   normal = Geom::Vector3d.new 0,0,1
    #   xaxis = Geom::Vector3d.new 1,0,0
    #   start_a = Math::PI/2
    #   end_a = Math::PI
    #   model = Sketchup.active_model
    #   entities = model.entities
    #   edge_array = entities.add_arc center, xaxis, normal, 5, start_a, end_a
    #   edge = edge_array[0]
    #   arc_curve = edge.curve
    #   start_angle = arc_curve.start_angle
    #
    # @return [Numeric] the angle of the start of the arc (in radians) if
    #   successful.
    def start_angle
    end

    # Get the X axis of the arc's coordinate system.
    #
    # @note The length of the returned vector is equal to the radius of the
    #   underlying curve.
    #
    # @example
    #   center_point = Geom::Point3d.new
    #   # Create a circle perpendicular to the normal or Z axis
    #   vector = Geom::Vector3d.new 0,0,1
    #   vector2 = vector.normalize!
    #   model = Sketchup.active_model
    #   entities = model.entities
    #   edge_array = entities.add_circle center_point, vector2, 10
    #   edge = edge_array[0]
    #   arc_curve = edge.curve
    #   v = arc_curve.xaxis
    #
    # @return [Geom::Vector3d] the xaxis of the arc's coordinate system if
    #   successful.
    def xaxis
    end

    # Get the Y axis of the arc's coordinate system.
    #
    # @note The length of the returned vector is equal to the radius of the
    #   underlying curve.
    #
    # @example
    #   center_point = Geom::Point3d.new
    #   # Create a circle perpendicular to the normal or Z axis
    #   vector = Geom::Vector3d.new 0,0,1
    #   vector2 = vector.normalize!
    #   model = Sketchup.active_model
    #   entities = model.entities
    #   edge_array = entities.add_circle center_point, vector2, 10
    #   edge = edge_array[0]
    #   arc_curve = edge.curve
    #   v = arc_curve.yaxis
    #
    # @return [Geom::Vector3d] the yaxis of the arc's coordinate system if
    #   successful.
    def yaxis
    end

  end # class ArcCurve < Curve
end # module Sketchup
