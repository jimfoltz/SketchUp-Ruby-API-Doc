# The Animation interface is implemented to create animations inside SketchUp.
# At any given time, a single animation can be active on a View. To make your
# own, build a Ruby class that contains the methods described below.
#
# Animation objects are activated by using the <tt>animation=</tt> method on a
# View object. To stop an animation set the view's animation object to nil, like
# so:
#   Sketchup.active_model.active_view.animation = nil
#
# @abstract
#
# @example
#   # This is an example of a simple animation that floats the camera up to
#   # a z position of 200". The only required method for an animation is
#   # nextFrame. It is called whenever you need to show the next frame of
#   # the animation. If nextFrame returns false, the animation will stop.
#   class FloatUpAnimation
#     def nextFrame(view)
#       new_eye = view.camera.eye
#       new_eye.z = new_eye.z + 1.0
#       view.camera.set(new_eye, view.camera.target, view.camera.up)
#       view.show_frame
#       return new_eye.z < 500.0
#     end
#   end
#
#   # This adds an item to the Camera menu to activate our custom animation.
#   UI.menu("Camera").add_item("Run Float Up Animation") {
#     Sketchup.active_model.active_view.animation = FloatUpAnimation.new
#   }
#
# @see http://www.sketchup.com/intl/en/developer/docs/ourdoc/animation Animation Docs
#
# @since SketchUp 6.0
class Animation

  # Invoked by SketchUp to tell the animation to display its next frame. This
  # method should set up the camera and then call the <tt>show_frame</tt> method on
  # the View object.
  #
  # @example
  #   def nextFrame(view)
  #     # Insert your handler code for updating the camera or other entities.
  #     view.show_frame
  #     return true
  #   end
  #
  # @param [Sketchup::View] view The view for the animation.
  #
  # @return [Boolean] +true+ if you want the animation to continue on to the
  #   next frame or +false+ if you want the animation to stop after this frame.
  def nextFrame(view)
  end

  # Invoked by SketchUp when the animation is paused.
  #
  # This method is optional (you do not need to implement this method unless you
  # want to perform some specialized function when the animation is paused). You
  # cannot call this method in your code explicitly and expect an animation to
  # pause, only certain SketchUp events cause the method to be called.
  #
  # @note The user interface for pausing and resuming animations isn't
  #   integrated with the Ruby API in the current version, so this method is
  #   probably not useful to you.
  #
  # @example
  #   def pause
  #     # Insert handler code for whatever you need to do when it is paused.
  #   end
  #
  # @return [void]
  def pause
  end

  # Invoked by SketchUp when the animation is resumed after being paused.
  #
  # This method is optional (you do not need to implement this method unless you
  # want to perform some specialized function when the animation is resumed).
  # You cannot call this method in your code explicitly and expect an animation
  # to stop, only certain SketchUp events cause the method to be called.
  #
  # @note The user interface for pausing and resuming animations isn't
  #   integrated with the Ruby API in the current version, so this method is
  #   probably not useful to you.
  #
  # @example
  #   def resume
  #     # Insert your handler code for whatever you need to do as you resume.
  #   end
  #
  # @return [void]
  def resume
  end

  # Invoked by SketchUp when the animation is stopped.
  #
  # This method is optional (you do not need to implement this method unless you
  # want to perform some specialized function when the animation is stopped).
  # You cannot call this method in your code explicitly and expect an animation
  # to stop, only certain SketchUp events cause the method to be called.
  #
  # Perhaps the most common way for this method to be called is when your Ruby
  # code sets the view.animation to nil.
  #
  # @example
  #   def stop
  #     # Insert your handler code for cleaning up after your animation.
  #   end
  #
  # @return [void]
  def stop
  end

end # class Animation
