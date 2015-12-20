class Project
  attr_accessor :tasks

  def initialize
    @tasks = []
  end

  def done?
    tasks.reject(&:complete?).empty?
  end

  def total_size
    tasks.sum(&:size)
  end

  def remaining_size
    tasks.reject(&:complete?).sum(&:size)
  end
end
