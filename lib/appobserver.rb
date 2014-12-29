# This observer interface is implemented to react to application events. This
# interface is often used to attach other observers to models as they are opened
# or started. This ensures that your observers are watching all open models.
#
# For example, when one attaches a SelectionObserver, it is only attached to the
# Selection collection of a given model. If a 2nd model is opened, the new
# model's selection changes will not fire selection callbacks unless you've
# attached a {SelectionObserver} to the new model as well. By watching for
# {#onNewModel}, you can be sure to do so.
#
# To implement this observer, create a Ruby class of this type, override the
# desired methods, and add an instance of the observer to the application class.
#
# @example
#   # This is an example of an observer that watches the application for
#   # new models and shows a messagebox.
#   class MyAppObserver < Sketchup::AppObserver
#     def onNewModel(model)
#       puts "onNewModel: " + model.to_s
#
#       # Here is where one might attach other observers to the new model.
#       model.selection.add_observer(MySelectionObserver.new)
#     end
#   end
#
#   # Attach the observer
#   Sketchup.add_observer(MyAppObserver.new)
#
# @see http://www.sketchup.com/intl/en/developer/docs/ourdoc/appobserver AppObserver Docs
#
# @since SketchUp 6.0
class Sketchup::AppObserver

  # Called to determine if the observer expects to receive {#onNewModel} and
  # {#onOpenModel} calls for the models that are created or opened at SketchUp
  # startup. This includes the empty initial model, a model opened via command
  # line arguments, or auto-restored models on Mac OS X. Prior to SketchUp 2014,
  # these methods were not being called for the startup models. This issue is
  # now fixed but observers still need to express their intent to receive these
  # calls. This is for back-compatibility with existing scripts which worked
  # around these missing calls by other means. For new code, this method should
  # be implemented and should return true.
  #
  # @example
  #   def expectsStartupModelNotifications()
  #     return true
  #   end
  #
  # @return [Boolean] Return true to receive {#onNewModel} and {#onOpenModel} calls
  # for startup models. Return false or simply not implement the method in order
  # to not receive these calls (which was the behaviour prior to SketchUp 2014).
  #
  # @since SketchUp 2014
  def expectsStartupModelNotifications
  end

  # Called when an open model is activated. This is relevant on Mac only which
  # supports multiple documents to be opened simultaneously.
  #
  # @example
  #   def onActivateModel(model)
  #     puts "onActivateModel: " + model.to_s
  #   end
  #
  # @param [Sketchup::Model] model The newly-activated model object.
  #
  # @return [void]
  #
  # @since SketchUp 2015
  def onActivateModel(model)
  end

  # Called when the application creates a new, empty model.
  #
  # @example
  #   def onNewModel(model)
  #     puts "onNewModel: " + model.to_s
  #   end
  #
  # @param [Sketchup::Model] model The active model object.
  #
  # @return [void]
  #
  # @since SketchUp 6.0
  def onNewModel(model)
  end

  # Called when the application opens an existing model.
  #
  # @note If a skp file is loaded via the command line or double-clicking on a
  # skp in explorer (which is also is the command line) then this observer will
  # not be called. The Ruby interpreter in SketchUp is initialized after command
  # line processing so the observer won't be added in time to get the
  # notification.
  #
  # @example
  #   def onOpenModel(model)
  #     puts "onOpenModel: " + model.to_s
  #   end
  #
  # @param [Sketchup::Model] model The active model object.
  #
  # @return [void]
  #
  # @since SketchUp 6.0
  def onOpenModel(model)
  end

  # Triggered when SketchUp closes. This is useful if you need to clean up
  # anything or store your application state upon close.
  #
  # @example
  #   def onQuit()
  #     UI.messagebox("SU is closing!")
  #   end
  #
  # @return [void]
  #
  # @since SketchUp 6.0
  def onQuit
  end

  # Called when the user turns off a Ruby extension. This is useful for
  # detecting if the user is deactivating some critical set of observers, for
  # example, so you can warn them or cache your plugin state.
  #
  # @example
  #   def onUnloadExtension(ext_name)
  #     puts "onUnloadExtension: " + ext_name.to_s
  #   end
  #
  # @param [String] ext_name The name of the extension just unloaded.
  #
  # @return [void]
  #
  # @since SketchUp 7.0
  def onUnloadExtension(ext_name)
  end

end # class Sketchup::AppObserver
