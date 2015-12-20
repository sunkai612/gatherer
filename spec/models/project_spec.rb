require 'rails_helper'

RSpec.describe Project do
  it 'considers a project with no tasks to be done' do
    project = Project.new

    expect(project.done?).to be_truthy
  end

  it 'knows that a project with an incomplete task is not done' do
    project = Project.new
    task = Task.new
    project.tasks << task

    expect(project.done?).to be_falsy
  end
end
