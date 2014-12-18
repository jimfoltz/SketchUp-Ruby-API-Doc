module UI

  class Toolbar

    include Enumerable

    def length
    end
    alias_method :size, :length

    def add_item(command)
    end
    def add_separator
    end
    def get_last_state
    end
    def hide
    end
    def new(name)
    end
    def restore
    end
    def show
    end
    def visible?
    end

  end

end
