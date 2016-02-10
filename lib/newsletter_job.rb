class NewsletterJob < Struct.new(:text)
  def customlog
    Rails.logger.info "--------------- THE JOB IS CALLED -----------------------"

     User.create(email: 'logger@test.com', password: 'password' ,role:'admin')
  end
end


# class NewsletterJob
#
# def customlog/
#   Rails.logger.info "Deliver messages"
# end
#
# end
