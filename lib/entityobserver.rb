module Sketchup
    # Attched to an {Entity} using the {Entity#add_observer} method
    # @abstract
    #   This is an abstract class - you need to over-write
    #   the methods in your code.
    #
    # @example
    #   # use a Ruby module as a namespace to avoid conflicts
    #   module Namespace
    #       # Define a new observer class
    #       class MyEntityObserver < Sketchup::EntityObserver
    #           def onChangeEntity(entity)
    #           end
    #           def onEraseEntity(entity)
    #           end
    #       end
    #   end
    #   # Create a reference to a new observer (if it needs to be removed later.)
    #   my_ent_obs = MyEntityObserver.new
    #   # Attach the observer to a Group
    #   grp.add_observer(my_ent_obs)
    #   # ...Later, remove the observer
    #   grp.remove_observer(my_ent_observer)
    #
    #
    class EntityObserver

        # @param [Entity] entity
        # @return [nil]
        def onChangeEntity(entity)
        end

        # @param [Entity] entity
        # @return [nil]
        def onEraseEntity(entity)
        end
    end
end
