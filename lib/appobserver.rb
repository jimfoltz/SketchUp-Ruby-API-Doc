module Sketchup
  # {http://www.sketchup.com/intl/en/developer/docs/ourdoc/appobserver AppObserver Docs}
  class AppObserver

    # @since SketchUp 2014
    # @example
    #    def expectsStartupModelNotifications
    #        return true
    #    end
    #     
    # Return `true` to receive onNewModel and onOpenModel calls for
    # startup models. Return false or simply not implement the method in
    # order to not receive these calls (which was the behavior prior to
    # SketchUp 2014).
    def expectsStartupModelNotifications
    end

    def onNewModel
      return nil
    end

    # @return nil
    def onOpenModel
      return nil
    end

    # @return nil
    def onQuit
      return nil
    end

    # @return nil
    def onUnloadExtension
      return nil
    end

  end
end # module Sketchup
