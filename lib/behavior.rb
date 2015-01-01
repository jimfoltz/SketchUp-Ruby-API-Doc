module Sketchup

  # The {Behavior} class is used to control the "behavior" of components, which
  # roughly correlates to the series of options that you see in the Components
  # dialog under the "edit" tab, such as whether it casts shadows, glues to
  # walls, etc.
  #
  # A {Behavior} object is accessed from a {ComponentDefinition} object, not
  # created with a <tt>Behavior.new</tt> call.
  #
  # @example
  #   # Grab the Behavior object from the first component definition.
  #   model = Sketchup.active_model
  #   definition = model.definitions[0]
  #   behavior = definition.behavior
  #
  # @see http://www.sketchup.com/intl/en/developer/docs/ourdoc/behavior Behavior
  #
  # @since SketchUp 6.0
  class Behavior < Entity

    # Set the always-face-camera behavior for a component.
    #
    # @example
    #   model = Sketchup.active_model
    #   behavior = model.definitions[0].behavior
    #   status = behavior.always_face_camera = false
    #
    # @param [Boolean] state +true+ to enable always-face-camera behavior,
    #   +false+ to disable always-face-camera behavior.
    #
    # @return [Object] The newly assigned value.
    def always_face_camera=(state)
    end

    # Determine if the always-face-camera behavior is enabled. If the
    # always-face-camera behavior is true, then a component will always try to
    # orient itself so that the -Y axis of the component is facing the camera.
    #
    # @example
    #   model = Sketchup.active_model
    #   # Returns a DefinitionList
    #   definitions = model.definitions
    #   path = Sketchup.find_support_file "Bed.skp", "Components/Components Sampler/"
    #
    #   begin
    #     definition = definitions.load path
    #   rescue
    #     UI.messagebox $!.message
    #   end
    #
    #   behavior = definition.behavior
    #   b = behavior.always_face_camera?
    #   if (b)
    #     UI.messagebox b
    #   else
    #     UI.messagebox "Always Face Camera is equal to false"
    #   end
    #   status = behavior.always_face_camera = true
    #   b = behavior.always_face_camera?
    #   if (b)
    #     UI.messagebox b
    #   else
    #     UI.messagebox "Failure"
    #   end
    #
    # @return [Boolean] +true+ if the component is set to always face the camera
    #   or +false+ if the component is not set to always face the camera.
    def always_face_camera?
    end

    # Set the cut-openings behavior for a component.
    #
    # @example
    #   model = Sketchup.active_model
    #   behavior = model.definitions[0].behavior
    #   status = behavior.cuts_opening = false
    #   if (status)
    #     # if status is true, print the status
    #     UI.messagebox status
    #   else
    #     # code to respond cuts_opening being false
    #   end
    #
    # @param [Boolean] state +true+ to enable cuts openings, +false+ to disable
    #   cuts-openings.
    #
    # @return [Object] The newly assigned value.
    def cuts_opening=(state)
    end

    # Determine if the cuts-openings behavior is set for a component.
    #
    # @example
    #   model = Sketchup.active_model
    #   behavior = model.definitions[0].behavior
    #   status = behavior.cuts_opening?
    #   if (status)
    #     # if status is true, do something
    #   else
    #     # if status is false, do something else
    #   end
    #
    # @return [Boolean] +true+ if cuts-openings behavior is set or +false+ if
    #   cuts-openings behavior is not set.
    def cuts_opening?
    end

    # Set the 2D behavior for a component: whether it can be glued or aligned to
    # a face.
    #
    # @example
    #   model = Sketchup.active_model
    #   behavior = model.definitions[0].behavior
    #   status = behavior.is2d = false
    #   if (status)
    #     # if status is true, print the status
    #     UI.messagebox status
    #   else
    #     # code to respond is2d behavior being false
    #   end
    #
    # @param [Boolean] state +true+ to enable 2D behavior, +false+ to disalbe 2D
    #   behavior.
    #
    # @return [Object] The newly assigned value.
    def is2d=(state)
    end

    # Determine if the 2D behavior is set: whether it can be glued or aligned to
    # a face.
    #
    # @example
    #   model = Sketchup.active_model
    #   behavior = model.definitions[0].behavior
    #   status = behavior.is2d?
    #   if (status)
    #     # if status is true, do something
    #   else
    #     # if status is false, do something else
    #   end
    #
    # @return [Boolean] The status of the 2D behavior.
    def is2d?
    end

    # Set an integer that is really a bit-by-bit description of which scale tool
    # handles are hidden on a given component. This is useful for creating
    # definitions that can only be scaled in particular ways. If a bit contains
    # a 1, then a certain handle set will be hidden when the user selects the
    # component and activates the Scale tool. Here is the map of which bits
    # control which handles.
    #   Bit0: disable scale along red (X),
    #   Bit1: disable scale along green (Y),
    #   Bit2: disable scale along blue (Z),
    #   Bit3: disable scale in red/blue plane (X+Z),
    #   Bit4: disable scale in green/blue plane (Y+Z),
    #   Bit5: disable scale in red/green plane (X+Y),
    #   Bit6: disable scale uniform (from corners) (XYZ).
    #
    # @note For 2-dimensional components (such as face-me components), not all
    #   of the handles in the list above are even used. Also, if the component
    #   you are modifying is already selected with the scale tool, then you or
    #   your user must deactivate and reactivate the scale tool for your new
    #   behavior to take effect.
    #
    # @example
    #   # Disable the green and red-axes handles by setting bits 1 and 2 to 1.
    #   definition = Sketchup.active_model.definitions[0]
    #   behavior = definition.behavior
    #   behavior.no_scale_mask = (1 << 1) + (1 << 2)
    #
    # @param [Fixnum] scale_mask An integer describing which scale tool handles
    #   are hidden.
    #
    # @return [Object] The newly assigned value.
    #
    # @since Sketchup 7.0
    def no_scale_mask=(scale_mask)
    end

    # Get an integer that is a bit-by-bit description of which scale tool
    # handles are hidden when the user selects this single component with the
    # scale tool. See the {#no_scale_mask=} method for details on the bit
    # encodings used.
    #
    # @example
    #   definition = Sketchup.active_model.definitions[0]
    #   behavior = definition.behavior
    #   no_scale_mask = behavior.no_scale_mask?
    #
    # @return [Fixnum] An integer describing which scale tool handles are
    #   hidden.
    #
    # @since Sketchup 7.0
    def no_scale_mask?
    end

    # Identify whether the component's shadow will be cast from the component's
    # current position as though the component were facing the sun. See the
    # Component entity within the SketchUp User's guide for more information on
    # this feature.
    #
    # @example
    #   model = Sketchup.active_model
    #   behavior = model.definitions[0].behavior
    #   behavior.shadows_face_sun = true
    #
    # @param [Boolean] status +true+ if the component's shadow is to be cast
    #   from the component's current position as though the component were
    #   facing the sun, +false+ to cause the shadow to be cast from the
    #   component's current position.
    #
    # @return [Object] The newly assigned value.
    def shadows_face_sun=(status)
    end

    # Determine whether the component's shadow is being cast from the
    # component's current position (as though the component were facing the
    # sun). See the Component entity within the SketchUp User's guide for more
    # information on this feature.
    #
    # @example
    #   model = Sketchup.active_model
    #   behavior = model.definitions[0].behavior
    #   status = behavior.shadows_face_sun?
    #
    # @return [Boolean] +true+ if the component's shadow is to be cast from the
    #   component's current position as though the component were facing the sun
    #   or +false+ if the shadow is to be cast from the component's current
    #   position.
    def shadows_face_sun?
    end

    # Get components "snap to" behavior. Returns a constant indicating the
    # snapping behavior of the component described by behavior. Snapping
    # behavior is how the x-y plane of a component instance will be snapped
    # against a face. Possible values are:
    #   SnapTo_Arbitrary  (0) => Snap to any arbitrary face.
    #   SnapTo_Horizontal (1) => Snap to horizontal face like floors.
    #   SnapTo_Vertical   (2) => Snap to vertical face like walls.
    #   SnapTo_Sloped     (3) => Snap to sloped face like sloping roofs.
    #
    # @example
    #   model = Sketchup.active_model
    #   behavior = model.definitions[0].behavior
    #   status = behavior.snapto
    #   if (status)
    #     # if status is true, do something
    #   else
    #     # if status is false, do something else
    #   end
    #
    # @return [Fixnum] A constant identifying one of the snapto types.
    def snapto
    end

    # Set components "snap to" behavior. Snapping behavior is how the x-y plane
    # of a component instance will be snapped against a face. Possible constant
    # values are:
    #   SnapTo_Arbitrary  (0) => Snap to any arbitrary face.
    #   SnapTo_Horizontal (1) => Snap to horizontal face like floors.
    #   SnapTo_Vertical   (2) => Snap to vertical face like walls.
    #   SnapTo_Sloped     (3) => Snap to sloped face like sloping roofs.
    #
    # @example
    #   model = Sketchup.active_model
    #   behavior = model.definitions[0].behavior
    #   behavior.snapto = SnapTo_Horizontal
    #
    # @param [Fixnum] type A constant identifying one of the snapto types.
    #
    # @return [Object] The newly assigned value.
    def snapto=(type)
    end

  end # class Behavior < Entity
end # module Sketchup
