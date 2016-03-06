#
# The Sketchup module namespace contains methods that might be considered "application" level methods. 
# The "entry-point" to most plugins.
#

module Sketchup

  # _The_ model!
  #
  # @example
  #   model = Sketchup.active_model
  #
  # @return [Model] the current active model. 
  # @note  On Windows, there is only a single active model.
  #   Since the Mac version of SketchUp 
  #   can have multiple models open, this returns the currently focused model.
  #
  def self.active_model
    if @model.class != Sketchup::Model
      @model = Sketchup::Model.new
    end
  end

  # Attaches an {AppObserver} to the current SketchUp Application. You should retain a
  # reference to the observer if you need to {remove_observer remove} it at a later time.
  #
  # @example
  #   app_observer = AppObserver.new
  #   status = Sketchup.add_observer(app_observer)
  #
  # @param [AppObserver] an instance of an AppObserver
  #
  # @return status true if successful, false if not.
  #
  # @see #remove_observer
  #
  def self.add_observer(app_observer)
  end

  def self.app_name
  end

  # When enabled (true):
  #
  # * Ruby Console now warns about Ruby operations left open. Leaving
  #   operations open is typically a bad practice. We are warning developers
  #   that they should try to find a different way of doing what they want to do.
  # * Ruby Console now warns when a user tries to create a nested operation.
  #   Starting a new operation while one is still open is a bad practice. We
  #   would like developers to be more aware that they are doing this so that
  #   they can fix their code.
  #
  # @param [Boolean] mode true or false
  # @return [Boolean] mode
  # @since SketchUp 2016
  #
  def self.debug_mode=(mode)
     @debug_mode = mode
  end

  # @since SketchUp 2016
  # @return [Boolean]
  def self.debug_mode?
     @debug_mode
  end

  def self.break_edges=
  end
  def self.break_edges?
  end
  def self.create_texture_writer
  end
  def self.display_name_from_action
  end

  # @since SketchUp 8.0 M2
  # @return [ExtensionsManager]
  # @see https://developers.google.com/sketchup/docs/ourdoc/sketchup#extensions
  # @see https://developers.google.com/sketchup/docs/ourdoc/extensionsmanager
  def self.extensions
  end

  def self.file_new
  end
  def self.find_support_file
  end
  def self.find_support_files
  end
  def self.format_angle
  end
  def self.format_area
  end
  def self.format_degrees
  end
  def self.format_length
  end
  def self.get_datfile_info
  end
  def self.get_i18ndatfile_info
  end
  def self.get_locale
  end
  def self.get_resource_path
  end
  def self.get_shortcuts
  end
  # Installs the contents of a ZIP archive file into SketchUp's Plugins folder. If the ZIP contains subfolders, these will be preserved.
  # @since SketchUp 8.0 M2
  # @return [ExtensionManager]
  def self.install_from_archive(path)

  end

  # @since 2015
  def self.is_64bit?
  end

  def self.is_online
  end
  def self.is_pro?
  end
  def self.is_valid_filename?
  end

  # Loads both encrypted (.rbs) and non-encrypted Ruby files.
  # @example
  #   status = Sketchup.load("C:/cool_plugins.rbs")
  #
  # @param [String] file path to a file
  # @return [Boolean] true if successful, otherwise false
  def self.load(file)
  end
  def self.open_file
  end
  def self.os_language
  end
  def self.parse_length
  end

  # @since SketchUp 2014
  def self.platform
  end

  # @since SketchUp 8.0 M2
  # @param [Boolean] true_or_false true or false
  def self.plugins_disabled=(true_or_false)
  end
  # @since SketchUp 8.0 M2
  def self.plugins_disabled?
  end

  # @since SketchUp 2014
  def self.quit
  end

  # @see write_default
  def self.read_default
  end

  def self.register_extension(extension, load_on_start)
  end

  def self.register_importer
  end

  # Removes an attached {AppObserver}
  #
  # @example
  #   status = Sketchup.remove_observer(app_observer)
  #
  # @param [AppObserver] app_observer a reference to a AppObserver instance.
  #
  # @return [Boolean] status true if successful, false if not.
  def self.remove_observer(app_observer)
  end

  def self.require(filename)
  end

  def self.save_thumbnail(filename)
  end

  def self.send_action
  end

  # Display a message in SketchUp's Status Bar or VCB value or label.
  # @param [String] text the text to display in the staus bar.
  # @param position (optional) one of:
  #   SB_PROMPT
  #   SB_VCB_LABEL
  #   SB_VCB_VALUE
  # @return [Boolean] true if successful, false if not.
  def self.set_status_text(text, position)
  end

  # @see set_status_text
  # @param [String] text the text to display in the staus bar.
  # @return [Boolean] true if successful, false if not.
  def self.status_text=(text)
  end

  # @since SketchUp 2014
  def self.temp_dir
  end

  def self.template
  end
  def self.template=
  end
  def self.template_dir
  end
  def self.undo
  end

  # Sets the label for the VCB, more recently known as the Measurements box.
  # @param [String] label the text label for the VCB
  def self.vcb_label=(label)
  end

  # Sets the value of the VCB, aka the Measurements box.
  # @param [String] str the text to place in the VCB.
  def self.vcb_value=(str)
  end

  def self.version
  end
  def self.version_number
  end

  # Write a key-value pair to the specified section of the Registry. Persistent storage.
  # Sections appear under HKCU\\Software\\Google\\SketchUp(v) where v is the SketchUp major version.
  # @example
  #   status = Sketchup.write_default("MyPluginConfig", "OffsetAmount", 3.5)
  #
  # @param [String] section The Registry key
  # @param [String] key
  # @param [String, Array, Numeric] value the value to store
  # @return [Boolean] true if success, false if not.
  # @see read_default
  def self.write_default(section, key, value)
  end
end
