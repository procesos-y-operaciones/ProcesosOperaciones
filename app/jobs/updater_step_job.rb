class UpdaterStepJob < ApplicationJob
  queue_as :default

  def perform( period )
    UpdaterStepJob.set(wait_until: (period.update_state).midnight).perform_later period
  end
end
