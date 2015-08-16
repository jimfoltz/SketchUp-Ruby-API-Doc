module Sketchup
  class Face < Drawingelement

    PointUnknown = 0
    PointInside = 1
    PointOnVertex = 2
    PointOnEdge = 4
    PointOnFace = 8
    PointOutside = 16
    PointNotOnPlane = 32

    # @since SketchUp 2014
    # @return [Vector3d]
    # @param [Boolean] use_front_side
    def get_texture_projection(use_front_side)
    end


    # @since SketchUp 2014
    # @param [Vector3d] vector
    # @param [Boolean] use_front_side
    # @return true or false
    def set_texture_projection(vector, use_front_side)
    end


    def all_connected
    end
    def area
    end
    def back_material
    end
    def back_material=(material)
    end
    def classify_point(point)
    end
    def edges
    end
    def followme
    end
    def get_UVHelper
    end
    def get_glued_instances
    end
    def loops
    end
    def material
    end
    def material=
    end

    # @return [Geom::PolygonMesh]
    def mesh(flags = Geom::PolygonMesh::PolygonMeshPoints)
    end

    def normal
    end
    def outer_loop
    end
    def plane
    end

    # @param [Sketchup::Material] material
    # @param [Array<Geom::Point3d>] mapping
    # @param [Boolean] front
    def position_material(material, mapping, front)
    end
    def pushpull
    end
    def reverse!
    end
    def vertices
    end
  end
end
