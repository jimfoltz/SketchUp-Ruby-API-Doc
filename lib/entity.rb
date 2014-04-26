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

    # @since 2006
    #   The ID is not persistent between sessions.
    # @since 2014
    #   Groups and ComponentInstances are persistent.
    # @return [Fixnum] 
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
    
    # Sets the value of an attibute in an AtrtributeDictonary
    # @param dict_name [String] the name of te AttributeDictionary
    # @param key [String] 
    # @param value
    #   Alowable values are:
    #   true, false, [Length], [Integer], [Float], [String], [Array]
    #   [Color], [Time], [Point3d], [Vector3d]
    def set_attribute(dict_name, key, value)
    end
    
    def to_s
    end
    def typename
    end
    def valid?
    end
end
end
