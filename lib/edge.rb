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

        def common_face
        end
        def curve
        end
        def end
    end
    def explode_curve
    end
    def faces
    end
    def find_faces
    end
    def length
    end
    def line
    end
    def other_vertex
    end
    def reversed_in?
    end
    def smooth=
    end
    def smooth?
    end
    def soft=
    end
    def soft?
    end
    def split
    end
    def start
    end
    def used_by?
    end
    def vertices
    end
end
end
