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

    # Added in 2014
    #Entities.active_section_plane
    #Entities.active_section_plane=
    #Entities.add_dimension_linear
    #Entities.add_dimension_radial
    #Entities.add_section_plane
    #Entities.size

    # @since SketchUp 2014
    # @return [SectionPlane]
    def active_section_plane
    end

    # @since SketchUp 2014
    def active_section_plane=(section_plane)
    end

    # @since SketchUp 2014
    def add_dimension_linear(dim_start, dim_end, offset_vector)
    end

    # @since SketchUp 2014
    def add_dimension_radial(arc_curve, leader_break_point)
    end

    # @since SketchUp 2014
    def add_section_plane(*args)
    end

    # @since SketchUp 2014
    # alias_method :size, :length
    # @see #length
    def size
    end

    def add_3d_text(string, alignment, font, bold = false, italic = false,
                    letter_height = nil, tolerance = 0.0, z = nil,
                    filled = true, extrusion = 0.0)
    end
    def add_arc(center, xaxis, normal, radius, start_angle, end_angle, segments = 12)
    end
    def add_circle(center, normal, radius, segments = 24)
    end
    def add_cline(line_Start, line_end, stipple = '')
    end

    def add_cpoint(point)
      pt = Sketchup::ConstructionPoint.new(pt)
      @list.push(pt)
      return(pt)
    end

    def add_curve(*args)
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
    def add_face(*args)
    end
    def add_faces_from_mesh(mesh)
    end
    def add_group(*args)
    end
    def add_image(filename, position, width, height = nil)
    end
    def add_instance(definition, transformation)
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
    def add_line(*args)
    end

    def add_ngon(center, normal, radius, segments)
    end
    def add_observer(observer)
    end
    def add_text(text, position, vector = nil)
    end
    def at(index)
    end
    def clear!
    end

      # @since SketchUp 2014 @see Enumberable#count
    def count
    end

    def each
    end
    def erase_entities(*args)
    end
    def fill_from_mesh(mesh, weld = nil,
                       smooth = AUTO_SOFTEN | SMOOTH_SOFT_EDGES,
                       front_material = nil, back_material = nil)
    end
    def intersect_with(recurse, transform1, entities1, transform2, hidden, entities2)
    end
    def length
    end

    def model
    end
    def parent
    end
    def remove_observer(observer)
    end
    def transform_by_vectors(entities, vectors)
    end
    def transform_entities(transformation, entities)
    end
  end
end
