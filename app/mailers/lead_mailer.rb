class LeadMailer < ActionMailer::Base
  default from: '"Tekukan Lead" <leads@tekukan.com>'
  
  def lead_notification(lead)
    @lead = lead
    mail to: '"Alex Peachey" <alex.peachey@tekukan.com>', subject: 'New Lead'
  end

end