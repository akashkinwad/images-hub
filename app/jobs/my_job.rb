class MyJob < ApplicationJob

  def perform(email)
    puts "email ====>> #{email}"
    # get provider_job_id for another purpose
    jid = self.provider_job_id # this is nil
    byebug
  end

end
