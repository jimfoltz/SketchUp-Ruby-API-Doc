module Sketchup

  class RenderingOptions < Entity

    include Enumerable

    ROPAssign = 0
    ROPSetRenderMode = 1
    ROPSetTransparencyObsolete = 2
    ROPSetTexture = 3
    ROPSetEdgeDisplayMode = 4
    ROPSetEdgeColorMode = 5
    ROPSetJitterEdges = 6
    ROPSetExtendEdges = 7
    ROPSetProfileEdges = 8
    ROPSetProfileWidth = 9
    ROPSetFaceColorMode = 10
    ROPSetDisplayInstanceAxes = 11
    ROPSetBackgroundColor = 12
    ROPSetForegroundColor = 13
    ROPSetHighlightColor = 14
    ROPSetConstructionColor = 15
    ROPSetDisplayColorByLayer = 16
    ROPSetExtendLines = 17
    ROPSetLineExtension = 18
    ROPSetDisplayFog = 19
    ROPSetFogColor = 22
    ROPSetFogDist = 23
    ROPSetFogHint = 24
    ROPSetSectionDisplayMode = 25
    ROPDrawHidden = 27
    ROPEditComponent = 28
    ROPTransparencySortMethod = 29
    ROPSetDepthQueEdges = 30
    ROPSetLineEndEdges = 31
    ROPSetDepthQueWidth = 32
    ROPSetLineEndWidth = 33
    ROPSetProfilesOnlyEdges = 34
    ROPSetLockedColor = 35
    ROPSetDisplaySketchAxes = 36
    ROPSetFaceColor = 37
    ROPSetEdgeType = 38
    ROPSetModelTransparency = 39
    ROPSetMaterialTransparency = 40
    ROPSetSectionActiveColor = 41
    ROPSetSectionInactiveColor = 42
    ROPSetSectionDefaultCutColor = 43
    ROPSetSectionCutWidth = 44
    ROPSetHideConstructionGeometry = 45
    ROPSetSkyColor = 46
    ROPSetGroundColor = 47
    ROPSetDrawHorizon = 48
    ROPSetDrawGround = 49
    ROPSetDrawUnderground = 50
    ROPSetGroundTransparency = 51
    ROPSetDisplayText = 52
    ROPSetDisplayDims = 53
    ROPSetFogUseBkColor = 54

    def []
    end
    def []=
    end
    def add_observer
    end
    def each
    end
    def each_key
    end
    def each_pair
    end
    def keys
    end
    def remove_observer
    end

    # @since SketchUp 2014
    def count
    end


    # @since SketchUp 2014
    def length
    end

    # @since SketchUp 2014
    def size
    end

  end
   
end

