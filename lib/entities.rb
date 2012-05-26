module Sketchup
    class Entities
        include Enumerable

	# @private
        def initialize
            #@model = Sketchup::Model.new
	    @list = []
        end

	# @private
	def inspect
	    @list.to_s
	end
        # @private
        def empty?
            @list.empty?
        end

        def [](o)
        end

        def add_3d_text
        end
        def add_arc(center, xaxis, normal, radius, start_angle, end_angle, segments = 12)
            arc = SketchUp::ArcCurve.new(center, xaxis, normal, radius, start_angele, end_angle, segments)
            return(arc)
        end
        def add_circle
        end
        def add_cline
        end

        def add_cpoint(pt)
            pt = Sketchup::ConstructionPoint.new(pt)
	    @list.push(pt)
	    return(pt)
        end

        def add_curve
        end

        # Accepts list of Point3ds or Array of Point3ds
        #
        # @param [Geom::Point3d, Geom::Point3d, ...]
        # @param [Array<Geom::Point3d>]
        #
        # @return [Array<Sketchup::Edge>] if successful
        def add_edges(*args)
	    edges = []
            len = args.length
            (len-1).times {|i| 
                edge = Edge.new(args[i], args[i+1])
                edges.push(edge)
            }
	    @list.concat(edges)
            return(edges)
        end
        def add_face
        end
        def add_faces_from_mesh
        end
        def add_group
        end
        def add_image
        end
        def add_instance
        end

        # Adds an Edge to the Entities collection
        #
        # @example
        #   model = Sketchup.active_model
        #   ents = model.entities
        #   edge = ents.add_line(ORIGIN, [1, 1, 0])
        #
        # @param pt1 {Geom::Point3d}
        # @param pt2 [Geom::Point3d]
        #
        # @return [Sketchup::Edge] ege
        #
        def add_line(pt1, pt2)
            edges = add_edges(pt1, pt2)
            return(edges.first)
        end

        def add_ngon
        end
        def add_observer
        end
        def add_text
        end
        def at
        end
        def clear!
        end
        def count
        end
        def each
        end
        def erase_entities
        end
        def fill_from_mesh
        end
        def intersect_with
        end
        def length
        end
        def model
            @model
        end
        def parent
        end
        def remove_observer
        end
        def transform_by_vectors
        end
        def transform_entities
        end
    end
end
