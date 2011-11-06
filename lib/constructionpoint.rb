module Sketchup
class ConstructionPoint < Drawingelement
    # @private
    def initialize(pt = [0, 0, 0])
	@position = Geom::Point3d.new(pt)
    end

    def position
	@position
    end
end
end
