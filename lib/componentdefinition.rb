module Sketchup
  class ComponentDefinition < Drawingelement
    include Comparable
    def <=>
    end
    def ==
    end

    def add_classification
    end

    def add_observer
    end
    def behavior
    end
    def count_instances
    end

    # The count_used_instances method is used to count the total number of
    # component instances in a model using this component definition. This
    # method takes into account the full hierarchy of the model.
    #
    # @since SketchUp 2016
    # @return [Fixnum] the number of instances
    def count_used_instances
       count = 0
       return count
    end
    
    def description
    end
    def description=
    end
    def entities
    end

    def get_classification_value
    end

    def group?
    end
    def guid
    end
    def hidden?
    end
    def image?
    end
    def insertion_point
    end
    def insertion_point=
    end
    def instances
    end
    def internal?
    end
    def invalidate_bounds
    end
    def name
    end
    def name=
    end
    def path
    end
    def refresh_thumbnail
    end

    def remove_classification
    end

    def remove_observer
    end
    def save_as
    end
    def save_thumbnail
    end

    def set_classification_value
    end

  end
end
