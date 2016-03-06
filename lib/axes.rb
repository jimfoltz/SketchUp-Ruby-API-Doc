module Sketchup

   # @since SketchUp 2016
   class Axes < Entity

      # @return Array<Vector3d>
      def axes
      end

      # @return [Point3d]
      def origin
      end

      # @return [Axes]
      def set(point, xaxis, yaxis, zaxis)
      end

      # @return [Array]
      def sketch_plane
      end

      # @return [Array] a point and 3 vectors
      def to_a
      end

      # @return [Transformation]
      def transformation
      end

      # @return [Vector3d]
      def xaxis
      end

      # @return [Vector3d]
      def yaxis
      end

      # @return [Vector3d]
      def zaxis
      end

   end
end

