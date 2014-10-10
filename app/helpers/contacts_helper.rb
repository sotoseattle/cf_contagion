module ContactsHelper
  def all_possible_sources
    Patient.all # to expand
  end

  def all_possible_targets
    Patient.all # to expand
  end
end
