module Sketchup

  # The {AttributeDictionary} class allows you to attach arbitrary collections
  # of attributes to a SketchUp entity. The attributes are defined by key/value
  # pairs where the keys are strings. An {Entity} or {Model} object can have any
  # number of {AttributeDictionary} objects.
  #
  # The {Entity} class is a popular parent class in SketchUp, meaning you can
  # attach {AttributeDictionaries} to almost anything, from geometric items like
  # edges and faces and components to more conceptual things like pages or
  # materials.
  #
  # @see http://www.sketchup.com/intl/en/developer/docs/ourdoc/attributedictionary AttributeDictionary Docs
  #
  # @since SketchUp 6.0
  class AttributeDictionary < Entity

    include Enumerable

    # Get attribute value.
    #
    # @example
    #   model = Sketchup.active_model
    #   value = model.set_attribute "test_dictionary", "test", 115
    #   attr_dicts = model.attribute_dictionaries
    #   attr_dicts = attr_dicts["test_dictionary"]
    #
    #   # value will contain 115
    #   value = attr_dicts["test"]
    #
    # @param [String] key The name of the attribute.
    #
    # @return [Object, nil] the attribute stored under the key, or <tt>nil</tt>
	#   if not found.
    def [](key)
    end

    # Set attribute value.
    #
    # @example
    #   model = Sketchup.active_model
    #   value = model.set_attribute "test_dictionary", "test", 110
    #   attr_dicts = model.attribute_dictionaries
    #   attr_dicts = attr_dicts["test_dictionary"]
    #   value = attr_dicts["test2"] = 120
    #   if (value)
    #     UI.messagebox value
    #   end
    #
    # @param [String] key The name of the attribute.
    # @param [Object] value The value of the attribute.
    #
    # @return [Object, nil] the assigned object if successful, or <tt>nil</tt>
	#   if unsuccessful.
    def []=(key, value)
    end

    # Delete an attribute with a given key.
    #
    # @example
    #   create_if_nil = true
    #   model = Sketchup.active_model
    #   attr_dict = model.attribute_dictionary "test_dict", create_if_nil
    #   attr_dict["attr_one"] = "one"
    #   attr_dict["attr_two"] = "two"
    #
    #   # Gets an array of values
    #   attr_dict = model.attribute_dictionaries['test_dict']
    #   value = attr_dict.delete_key("attr_one")
    #
    # @param [String] key The key to be deleted.
    #
    # @return [Object, nil] The value of the key, or nil if the specified key
    #   does not exist.
    def delete_key(key)
    end

    # Iterate through all of the attribute keys and values.
    #
    # @example
    #    create_if_nil = true
    #    model = Sketchup.active_model
    #    attr_dict = model.attribute_dictionary "test_dict", create_if_nil
    #    attr_dict["attr_one"] = "one"
    #    attr_dict["attr_two"] = "two"
    #
    #    # Iterates through all attributes and prints the key to the screen
    #    attr_dict = model.attribute_dictionaries['test_dict']
    #    attr_dict.each { | key, value |
    #      UI.messagebox key.to_s + '=' + value.to_s
    #    }
    #
    # @yieldparam [String] key
    # @yieldparam [Object] value
    #
    # @return [nil]
    def each
    end

    # Iterate through all of the attribute keys.
    #
    # @example
    #   create_if_nil = true
    #   model = Sketchup.active_model
    #   attr_dict = model.attribute_dictionary "test_dict", create_if_nil
    #   attr_dict["attr_one"] = "one"
    #   attr_dict["attr_two"] = "two"
    #
    #   # iterates through all attributes and prints the key to the screen
    #   attr_dict = model.attribute_dictionaries['test_dict']
    #   attr_dict.each_key { | key | UI.messagebox key }
    #
    # @yieldparam [String] key The key of each attribute as it is found.
    #
    # @return [nil]
    def each_key
    end

    alias_method :each_pair, :each

    # Get an array with all of the attribute keys.
    #
    # @return [Array] An array of keys within the attribute dictionary.
    def keys
    end

    # Get the number of attributes in the attribute dictionary.
    #
    # @example
    #   model = Sketchup.active_model
    #   model.set_attribute('Example', 'Hello', 'World')
    #   dictionary = model.attribute_dictionary('Example')
    #   number = dictionary.length
    #
    # @return [Fixnum] The size of the attribute dictionary.
    def length
    end

    alias_method :size, :length

    # Get the name of an attribute dictionary.
    #
    # @example
    #   create_if_nil = true
    #   model = Sketchup.active_model
    #   attr_dict = model.attribute_dictionary "test_dict", create_if_nil
    #   attr_dict["attr_one"] = "one"
    #   attr_dict["attr_two"] = "two"
    #
    #   # Show the name.
    #   UI.messagebox attr_dict.name
    #
    # @return [String] The name of the attribute dictionary.
    def name
    end

    # Get an array with all of the attribute values.
    #
    # @example
    #   create_if_nil = true
    #   model = Sketchup.active_model
    #   attr_dict = model.attribute_dictionary "test_dict", create_if_nil
    #   attr_dict["attr_one"] = "one"
    #   attr_dict["attr_two"] = "two"
    #
    #   # Gets an array of values
    #   attr_dict = model.attribute_dictionaries['test_dict']
    #   values = attr_dict.values
    #
    # @return [Array] An array of values within the attribute dictionary.
    def values
    end

  end # class AttributeDictionary < Entity
end # module Sketchup
