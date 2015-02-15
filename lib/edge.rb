module Sketchup
  class Edge < Drawingelement

    # @private
    def initialize(pt1, pt2)
    end

    # @example
    #   model = Sketchup.active_model
    #   edge = model.selection[0]
    #   ents = edge.all_connected
    #   ==> [<Sketchup::Edge:0x787a440>, #<Sketchup::Edge:0x787a42c>, #<Sketchup::Face:0x787a418>, #<Sketchup::Edge:0x787a468>, #<Sketchup::Edge:0x787a404>]
    #
    # @return [Array] an array of the edge and its connected entities.
    def all_connected
    end

    # @param [Sketchup::Edge] edge
    #
    # @return [Sketchup::Face, Nil]
    def common_face(edge)
    end

    # @return [Sketchup::Curve, Sketchup::ArcCurve, Nil]
    def curve
    end

    # @return [Sketchup::Vertex]
    def end
    end

    # @return [Sketchup::Edge]
    def explode_curve
    end

    # @return [Array<Sketchup::Face>]
    def faces
    end

    # @return [Integer]
    def find_faces
    end

    # @return [Length]
    def length
    end

    # @return [Array(Geom::Point3d, Geom::Vector3d)]
    def line
    end

    # @param [Sketchup::Edge] edge
    #
    # @return [Sketchup::Vertex]
    def other_vertex(edge)
    end

    # @param [Sketchup::Face] face
    #
    # @return [Boolean]
    def reversed_in?(face)
    end

    # @param [Boolean] value
    #
    # @return [Boolean]
    def smooth=(value)
    end

    # @return [Boolean]
    def smooth?
    end

    # @param [Boolean] value
    #
    # @return [Boolean]
    def soft=
    end

    # @return [Boolean]
    def soft?
    end

    # @param [Geom::Point3d] point
    #
    # @param [Sketchup::Edge, Nil]
    def split
    end

    # @return [Sketchup::Vertex]
    def start
    end

    # @param [Sketchup::Edge, Sketchup::Vertex] edge_or_vertex
    #
    # @return [Boolean]
    def used_by?(edge_or_vertex)
    end

    # @return [Array<Sketchup::Vertex>]
    def vertices
    end

  end
end
