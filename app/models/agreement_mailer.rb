class AgreementMailer < ActionMailer::Base

  def agreement_notification(agreement)
    email_addresses = Agreement.connection.select_values('select email_adress from email_addresses')
    recipients email_addresses
    from "no_reply@blingnation.com"
    subject "New merchant signup #{agreement.legal_name}"
    sent_on Time.now
    body({:agreement => agreement})
  end
  

end
