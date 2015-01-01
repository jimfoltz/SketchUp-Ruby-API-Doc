module Sketchup

  # The {AttributeDictionaries} class is a collection of all of the
  # {AttributeDictionary} objects that are attached to a given Entity object.
  #
  # The {Entity} class is a popular parent class in SketchUp, meaning you can
  # attach {AttributeDictionaries} to almost anything, from geometric items like
  # edges and faces and components to more conceptual things like pages or
  # materials.
  #
  # You access this class not by performing an <tt>AttributeDictionaries.new</tt>
  # but by grabbing a handle from an existing entity.
  #
  # By default, when entity is created it has no {AttributeDictionaries} object:
  #   g = Sketchup.active_model.entities.add_group
  #   g.attribute_dictionaries # => nil
  # The {AttributeDictionaries} object is added to the entity only once the first
  # attribute is added to the entity:
  #   g.set_attribute("Test", "Yo", "Hello")
  #   g.attribute_dictionaries # => #<Sketchup::Group:0x00000007569bc0>>
  # When irritating through entity attribute dictionaries, be sure to verify that
  # <tt>Sketchup::Entity.#attribute_dictionaries</tt> is not <tt>nil</tt>.
  #
  # @example
  #   # Grab the first entity from the model.
  #    my_layer = Sketchup.active_model.entities[0]
  #
  #   # Grab a handle to its attribute dictionaries.
  #   attr_dicts = my_layer.attribute_dictionaries
  #
  # @see http://www.sketchup.com/intl/en/developer/docs/ourdoc/attributedictionaries AttributeDictionaries Docs
  #
  # @since SketchUp 6.0
  class AttributeDictionaries < Entity

    include Enumerable

    # Get an {AttributeDictionary} object by name.
    #
    # @example
    #   model = Sketchup.active_model
    #   attr_dicts = model.attribute_dictionaries
    #   # Iterates through all dictionaries and prints to screen.
    #   dict = attr_dicts['my_dictionary']
    #   if dict
    #     UI.messagebox("Found: " + dict.to_s)
    #   else
    #     UI.messagebox("No dictionary found.")
    #   end
    #
    # @param [String] key The name of the attribute dictionary.
    #
    # @return [AttributeDictionary] An attribute dictionary if it exits or +nil+
    #   if none with the specified key exist.
    def [](key)
    end

    # Destroy {AttributeDictionary} object.
    #
    # @example
    #   model = Sketchup.active_model
    #   attr_dicts = model.attribute_dictionaries
    #   # Deletes a dictionary called 'my_dictionary'
    #   attr_dicts.delete 'my_dictionary'
    #
    # @param [AttributeDictionary, String] key_or_dict The name of the attribute
    #   dictionary to delete or the object itself.
    #
    # @return [AttributeDictionaries] The modified attribute dictionaries.
    def delete(key_or_dict)
    end

    # Iterate through all of the attribute dictionaries.
    #
    # @example
    #   model = Sketchup.active_model
    #   attr_dicts = model.attribute_dictionaries
    #   # Iterates through all dictionaries and prints to screen.
    #   attr_dicts.each { | dict | UI.messagebox dict }
    #
    # @yieldparam [AttributeDictionary] dictionary Each attribute dictionary as
    #   it is found.
    #
    # @return [nil]
    def each
    end

    # Get the number of {AttributeDictionary} objects in the collection.
    #
    # @example
    #    model = Sketchup.active_model
    #    model.set_attribute('Example', 'Hello', 'World')
    #    dictionaries = model.attribute_dictionaries
    #    number = dictionaries.length
    #
    # @return [Fixnum]
    #
    # @since SketchUp 2014
    def length
    end

    alias_method :size,  :length

  end # class AttributeDictionaries < Entity
end # module Sketchup
