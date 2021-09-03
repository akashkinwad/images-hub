class Delayed::Job < ApplicationRecord
  include Delayed::Backend::Base

  self.table_name = "delayed_jobs"

  attr_accessor :job_id

  before_validation :set_job_id

  before_create :check_details

  def akash
    puts "helloo"
  end
  
  def self.search(job_id)
    byebug
  end

  private

  def check_details
    byebug
  end

  def set_job_id
    data = YAML.load_dj(self.handler)
    byebug
    self.job_id = data.job_data['job_id']
  end
end
