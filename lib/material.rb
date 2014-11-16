module Sketchup
class Material < Entity
    include Comparable
    def <=>
    end
    def ==
    end
    def alpha
    end
    def alpha=
    end

    # @return [Sketchup::Color] the Color of the Material
    def color
    end
    def color=
    end

    # @since SketchUp 2015
    # @return [Array]
    def colorize_deltas
    end

    def colorize_type
    end

    def colorize_type=
    end

    def display_name
    end
    def materialType
    end
    def name
    end
    def texture
    end
    def texture=
    end
    def use_alpha?
    end
end
end
