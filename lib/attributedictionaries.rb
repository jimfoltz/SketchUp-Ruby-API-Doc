module Sketchup
  class AttributeDictionaries < Entity
    include Enumerable
    def []
    end
    def delete
    end
    def each
    end

    # @since Sketchup 2014
    def length
    end

    # @since SketchUp 2014
    alias_method :size,  :length

  end
end
