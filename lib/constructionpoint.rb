module Sketchup
    # @ since 6.0
    class ConstructionPoint < Drawingelement

        # @private
        def initialize(pt = [0, 0, 0])
            @position = Geom::Point3d.new(pt)
        end

        # @example
        #   pt = Sketchup.active_model.entities.add_cpoint([1, 1, 0])
        #   pos = pt.position
        #
        # @return [Point3d]
        #
        def position
            @position
        end
    end
end
