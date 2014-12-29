module  Geom
class BoundingBox
    # @return [Geom::BoundingBox]
    def add(things)
    end
    
    # @return [Geom::Point3d] the center point of the BoundingBox
    def center
    end
    
    # @return [Geom::BoundingBox] the bounding box which was clearer
    def clear
    end

    def contains?
    end

    # Returns the location of the BoundingBox corner at _n_
    #   
    #  0 = [0, 0, 0] (left front bottom)
    #  1 = [1, 0, 0] (right front bottom)
    #  2 = [0, 1, 0] (left back bottom)
    #  3 = [1, 1, 0] (right back bottom)
    #  4 = [0, 0, 1] (left front top)
    #  5 = [1, 0, 1] (right front top)
    #  6 = [0, 1, 1] (left back top)
    #  7 = [1, 1, 1] (right back top)
    # @param [Integer] n a number between 0 and 7
    #
    # @return [Geom::Point3d] the position of the corner at _n_, if successful
    def corner(n)
    end

    def depth
    end
    def diagonal
    end
    def empty?
    end
    def height
    end
    def intersect
    end
    def max
    end
    def min
    end
    def new
    end
    def valid?
    end
    def width
    end
end
end #module Geom
