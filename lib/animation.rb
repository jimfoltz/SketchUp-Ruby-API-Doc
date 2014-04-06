# @since SketchUp 6.0
#
# @abstract
#
# @example
#
#     # This is an example of a simple animation that floats the camera up to
#     # a z position of 200". The only required method for an animation is
#     # nextFrame. It is called whenever you need to show the next frame of
#     # the animation. If nextFrame returns false, the animation will stop.
#     class FloatUpAnimation
#       def nextFrame(view)
#         new_eye = view.camera.eye
#         new_eye.z = new_eye.z + 1.0
#         view.camera.set(new_eye, view.camera.target, view.camera.up)
#         view.show_frame
#         return new_eye.z < 500.0
#       end
#     end
#
#     # This adds an item to the Camera menu to activate our custom animation.
#     UI.menu("Camera").add_item("Run Float Up Animation") {
#       Sketchup.active_model.active_view.animation = FloatUpAnimation.new
#     } 

class Animation

  # The nextFrame method is invoked by SketchUp to tell the animation to display its next frame.
  #
  # @param [Sketchup::View] view
  #
  # @return [Boolean] true if you want the animation to continue on to the next frame, false if you want the animation to stop after this frame.

  def nextFrame(view)
    # return false
  end

  # The pause method is invoked by SketchUp when the animation is paused. 
  #
  # @return [nil]
  def pause
    return nil
  end

  # The resume method is invoked by SketchUp when the animation is resumed after being paused. 
  #
  # @return [nil]
  def resume
    return nil
  end

  # The stop method is invoked by SketchUp when the animation is stopped. 
  #
  # @return [nil]
  def stop
    return nil
  end
end
