class ApplicationJob < ActiveJob::Base

  # attr_writer :delayed_job_id
  # attr_writer :jid

  # after_enqueue do |job|
  #   puts "after_enqueue ~~~~~~>>>1111 | #{job.provider_job_id}"
  #   job.jid = job.provider_job_id
  #   job.provider_job_id = job.provider_job_id
  #   # @delayed_job_id ||= job.provider_job_id
  # end

  # def serialize
  #   puts "delayed_job_id =>>>>>> 222 -> #{@delayed_job_id}"
  #   super.merge('delayed_job_id' => @delayed_job_id)
  # end

  # def deserialize(job_data)
  #   super
  #   puts "------------------"
  #   ap job_data
  #   puts "------------------"
  #   byebug
  #   self.delayed_job_id = job_data['delayed_job_id']
  # end
end
