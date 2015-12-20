# 'rails_helper' contains Rails-related setup common to all tests.
# 'rails_helper' requires a file named 'spec_helper'
# 'spec_helper' contains non-Rails RSpec setup.
require 'rails_helper'

# The describe method defines a suite of tests that can share a common setup.
# It takes one argument (typically either a class name or a string) and a block.
# The argument documents what the test suite is supposed to cover.
# The block contains the test suite itself.
RSpec.describe Project do

  # The actual spec is defined with the it method.
  # 'it' takes an optional string argument that documents the spec,
  # and then a block that is the body of the spec.

  # 'it' also has an alias method called 'specify'.
  # 'specify' is more use for single-line tests without string description.
  it 'considers a project with no tasks to be done' do
    project = Project.new

    # 'expect' take any object and respond to two methods:
    # 1. 'to'
    # 2. 'not_to' (with an alias: 'to_not')
    # these two methods will take one RSpec matcher object,
    # which will respond to 'matches?' & 'does_not_match?',
    # which using object being matched as argument
    expect(project.done?).to be_truthy
  end
end
