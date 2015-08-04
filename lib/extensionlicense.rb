module Sketchup
 module  Licensing
    
    class ExtensionLicense

      # @return [Integer] number of days
      def days_remaining
      end
      
      # @return [String] error description
      def error_description
      end

      def licensed?
      end

      # @return state a constant defined in the Licensing namespace
      #
      #   * {Sketchup::Licensing::LICENSED}
      #   * {Sketchup::Licensing::EXPIRED}
      #   * {Sketchup::Licensing::TRIAL}
      #   * {Sketchup::Licensing::TRIAL_EXPIRED}
      #   * {Sketchup::Licensing::NOT_LICENSED}
      def state
        state = Sketchup::Licensing::NOT_LICENSED
        return state
      end
    end
  end
end
