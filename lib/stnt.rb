require 'coverage.so'

class SpecThisNotThat
  class << self

    # Returns true if the spec in the given file covers the given file of code
    def covers?(spec_filename, code_filename)
      true
      # RSpec::Core::Runner.run([spec_filename])
      options = RSpec::Core::ConfigurationOptions.new([spec_filename])
      config = RSpec::Core::Configuration.new

      require_relative '../spec/sample-project/spec/spec_helper.rb'
      runner = RSpec::Core::Runner.new(options, config, RSpec::Core::World.new)
      Coverage.start
      runner.run(File.open("/dev/null", "w"), File.open("/dev/null", "w"))
      p Coverage.result
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
