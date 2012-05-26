module Sketchup
class Entity

    # @param [EntityObserver] entity_observer
    # @return [Boolean]
    def add_observer(entity_observer)
    end
    def attribute_dictionaries
    end
    def attribute_dictionary
    end
    def delete_attribute
    end
    def deleted?
    end
    def entityID
    end
    def get_attribute
    end

    # Returns the Model of the receiver
    # @example
    #   model = face.model
    # @return [Sketchup::Model] the Model of the entity
    def model
    end
    def parent
    end
    # @param [ModelObserver] model_observer a instance of a model observer
    def remove_observer(model_observer)
    end
    def set_attribute
    end
    def to_s
    end
    def typename
    end
    def valid?
    end
end
end
