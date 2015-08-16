module Sketchup
    class Selection
        include Enumerable
        def []
        end
        def add(*args)
        end
        def add_observer(observer)
        end
        def at(index)
        end
        def clear
        end
        def contains?(entity)
        end
        def count
        end
        def each
        end
        def empty?
        end
        def first
        end
        def include?(entity)
        end
        def is_curve?
        end
        def is_surface?
        end

        def length
        end
        alias_method :size, :length

        def model
        end
        def nitems
        end
        def remove(*args)
        end
        def remove_observer(observer)
        end
        def shift
        end
        def single_object?
        end

        def toggle(*args)
        end
    end
end
