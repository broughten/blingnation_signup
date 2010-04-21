class AgreementMailer < ActionMailer::Base

  def agreement_notification(agreement)
    email_addresses = Agreement.connection.select_values('select email_address from email_addresses')
    email_addresses.push agreement.email
    recipients email_addresses
    from "membership@blingnation.biz"
    subject "New merchant signup #{agreement.legal_name}"
    sent_on Time.now
    body({:agreement => agreement})
  end
  

end
