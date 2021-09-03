class Delayed::Job < ActiveRecord::Base
  before_create :set_job_id

  private

  def set_job_id
    data = YAML.load_dj(self.handler)
    self.job_id = data.job_data['job_id']
  end
end
