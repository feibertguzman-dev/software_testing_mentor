require_relative "version"
require_relative "gemini_integration/client"
require_relative "testing_types/base"
require_relative "testing_types/unit"
require_relative "testing_types/white_box"
require_relative "testing_types/black_box"
require_relative "testing_types/gray_box"
require_relative "testing_types/smoke"
require_relative "testing_types/stress"
require_relative "testing_types/stability"
require_relative "learning_path/course"
require_relative "ui/interactive_menu"

module SoftwareTestingMentor
  class Error < StandardError; end

  def self.start
    UI::InteractiveMenu.new.display
  end
end
