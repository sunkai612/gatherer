require 'rails_helper'

RSpec.describe Project do

  describe 'initialization' do
    # 'let' can lazy execute block and cache result in local variable,
    # with name as given symbol.
    # To eager execute block, we can use 'let!'
    let(:project) { Project.new }
    let(:task) { Task.new }

    it 'considers a project with no tasks to be done' do
      # Any matcher of the form be_whatever assumes
      # an associated 'whatever?' method on the actual object and calls it.
      expect(project).to be_done

      # Any matcher of the form of be_a_whatever will
      # make RSpec look for 'whatever?' and then
      # form 'whatevers?'(plural) if it can’t find 'whatever?'

      # Also, if any method starts with has,
      # RSpec allows your matcher to start with have for readability

      # RSpec 3 also allows you to chain multiple matchers using 'and' and 'or',
      # as in: expect(actual).to include("a").and match(/.*3.*/),
      # or: expect(actual).to eq(3).or eq(5).

      # Matchers are also composable, so we can make:
      #   expect(actual[0]).to eq(5)
      #   expect(actual[1]).to eq(7)
      # to:
      #   expect(actual).to match([an_object_eq_to(5), an_object_eq_to(7)])
    end

    it 'knows that a project with an incomplete task is not done' do
      project.tasks << task
      expect(project).not_to be_done
    end
  end
end
