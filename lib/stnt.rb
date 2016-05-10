class SpecThisNotThat
  class << self

    # Returns true if the spec in the given file covers the given file of code
    def covers?(spec_filename, code_filename)
      true
      # RSpec::Core::Runner.run([spec_filename])
      options = RSpec::Core::ConfigurationOptions.new([spec_filename])

      runner = RSpec::Core::Runner.new(options, RSpec.configuration, RSpec::Core::World.new)
      runner.run(STDERR, STDOUT)
    end

    # Returns the list of specs that cover the given line of code
    def specs(code_filename)
      #TODO implement this!
    end

    # Returns the list of specs that need to be run to cover the changes since the latest mapping
    def specs_for_changes
      #TODO implement this!
    end


    # Run the list of specs that need to be run to cover the changes since the latest mapping
    def run_all_specs_for_changes
      #TODO implement this!
    end

  end
end
