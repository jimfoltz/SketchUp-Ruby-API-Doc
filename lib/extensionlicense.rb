module Sketchup
 module  Licensing
    
    class ExtensionLicense

      # @return [Integer] number of days
      def days_remaining
      end
      
      # @return [String] error description
      def error_descrption
      end

      def licensed?
      end

      # @return state a constantdefined in the Licensing namespace
      #
      #   * {Sketchup::Licensing::LICENSED}
      #   * {Sketchup::Licensing::EXPIRED}
      #   * {Sketchup::Licensing::TRIAL}
      #   * {Sketchup::Licensing::TRIAL_EXPIRED}
      #   * {Sketchup::Licensing::NOT_LICENSED}
      def state
        return state
      end
    end
  end
end
