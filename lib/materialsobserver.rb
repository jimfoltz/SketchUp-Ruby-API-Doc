module Sketchup

  # This observer interface is implemented to react to {Material}s events. 
  # To implement this observer, create a Ruby class of this type, override the 
  # desired methods, and add an instance of the observer to the objects of 
  # interest. The callback onMaterialRemoveAll has been deprecated, we 
  # recommend using onMaterialRemove instead.
  #
  # @example
  #   # This is an example of an observer that watches the materials collection 
  #   # for new materials and shows a messagebox.
  #   class MyMaterialsObserver < Sketchup::MaterialsObserver
  #     def onMaterialAdd(materials, material)
  #       UI.messagebox("onMaterialAdd: " + material.to_s)
  #     end
  #   end
  #
  #   # Attach the observer.
  #   Sketchup.active_model.materials.add_observer(MyMaterialsObserver.new)
  #
  # @see http://www.sketchup.com/intl/en/developer/docs/ourdoc/materialsobserver MaterialsObserver Docs
  #
  # @since SketchUp 6.0
  class MaterialsObserver

    # The onMaterialAdd method is invoked whenever a {Material} is added.
    #
    # @example
    #   def onMaterialAdd(materials, material)
    #     UI.messagebox("onMaterialAdd: " + material.to_s)
    #   end
    #
    # @param [Sketchup::Materials] materials The materials collection 
    #   to which the new material has been added.
    #
    # @param [Sketchup::Material] material The newly added material.
    #
    # @return [nil]
    #
    # @since SketchUp 6
    def onMaterialAdd(materials, material)
    end

    # The onMaterialChange method is invoked whenever a {Material}'s texture 
    # image is altered.
    #
    # @example
    #   def onMaterialChange(materials, material)
    #     UI.messagebox("onMaterialChange: " + material.to_s)
    #   end
    #
    # @param [Sketchup::Materials] materials The materials collection 
    #   to which the changed material belongs.
    #
    # @param [Sketchup::Material] material The changed material.
    #
    # @return [nil]
    #
    # @since SketchUp 6
    def onMaterialChange(materials, material)
    end

    # The onMaterialRefChange method is invoked whenever the number of entities 
    # that a material is painted on changes. This could be due to the user 
    # manually painting something, but it could also be when faces are split, 
    # pasted, push-pulled, deleted, etc.
    #
    # @example
    #   def onMaterialRefChange(materials, material)
    #     UI.messagebox("onMaterialRefChange: " + material.to_s)
    #   end
    #
    # @param [Sketchup::Materials] materials The materials collection 
    #   to which the changed material belongs.
    #
    # @param [Sketchup::Material] material The changed material.
    #
    # @return [nil]
    #
    # @since SketchUp 6
    def onMaterialRefChange(materials, material)
    end

    # The onMaterialRemove method is invoked whenever a {Material} is deleted.
    #
    # @example
    #   def onMaterialRemove(materials, material)
    #     UI.messagebox("onMaterialRemove: " + material.to_s)
    #   end
    #
    # @param [Sketchup::Materials] materials The materials collection 
    #   from which the material was removed.
    #
    # @param [Sketchup::Material] material The removed material.
    #
    # @return [nil]
    #
    # @since SketchUp 6
    def onMaterialRemove(materials, material)
    end

    # @deprecated
    def onMaterialRemoveAll
    end

    # The onMaterialSetCurrent method is invoked whenever a different {Material} 
    # is selected in the Materials dialog.
    #
    # @example
    #   def onMaterialSetCurrent(materials, material)
    #     UI.messagebox("onMaterialSetCurrent: " + material.to_s)
    #   end
    #
    # @param [Sketchup::Materials, nil] materials The materials collection 
    #   to which the newly selected material belongs. If the selected material is 
    #   not yet used in the Model (like from default Material Libraries), nil is 
    #   passed instead.
    #
    # @param [Sketchup::Material] material The newly selected material.
    #
    # @return [nil]
    #
    # @since SketchUp 6
    def onMaterialSetCurrent(materials, material)
    end

    # The onMaterialUndoRedo method is invoked whenever a material is altered 
    # and then those changes are undone or redone.
    #
    # @note Due to a bug, this callback does not fire in SU6 or SU7. You can use 
    #   the ModelObserver.onTransactionStart to capture all undo events.
    #
    # @example
    #   def onMaterialUndoRedo(materials, material)
    #     UI.messagebox("onMaterialUndoRedo: " + material.to_s)
    #   end
    #
    # @param [Sketchup::Materials] materials The materials collection 
    #   to which the modified material belongs.
    #
    # @param [Sketchup::Material] material The modified material.
    #
    # @return [nil]
    def onMaterialUndoRedo(materials, material)
    end

  end
end
