class AssignmentQuestionnaire < ActiveRecord::Base
  belongs_to :assignment
  belongs_to :questionnaire
  has_paper_trail

  scope :retrieve_questionnaire_for_assignment, lambda { |assignment_id| joins(:questionnaire).where('id = ?', assignment_id)}
end
