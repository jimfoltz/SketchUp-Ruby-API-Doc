module Sketchup
class LayersObserver
    def onCurrentLayerChanged
    end
    def onLayerAdded
    end

    # @since SketchUp 2014
    # @return [Layer]
    def onlayerChanged(layers)
    end

    def onLayerRemoved
    end
    def onRemoveAllLayers
    end
end
end
