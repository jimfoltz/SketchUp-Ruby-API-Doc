module Sketchup

   # @since SketchUp 6
   class PickHelper

      def all_picked
      end
      def best_picked
      end

      # @since SketchUp 2016
      # @return [Integer] the number of Entity objects picked
      def boundingbox_pick(bounding_box, pick_type, transformtion = nil)
      end

      def count
      end
      def depth_at
      end
      def do_pick
      end
      def element_at
      end
      def init
      end
      def leaf_at
      end
      def path_at
      end
      def pick_segment
      end
      def picked_edge
      end
      def picked_element
      end
      def picked_face
      end
      def test_point
      end
      def transformation_at
      end
      def view
      end

      # @since SketchUp 2016
      # @return [Integer] number of entities picked
      def window_pick(start_point, end_point, pick_type)
      end
   end
end
