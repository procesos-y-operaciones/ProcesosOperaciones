class UpdaterStepJob < ApplicationJob
  queue_as :default

  def perform( period )
    date = period.update_state
    if date.present?
      UpdaterStepJob.set(wait_until: (date).midnight).perform_later period
    end
  end
end
