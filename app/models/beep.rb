class Beep < ActiveRecord::Base
    
  # Twilio REST API version
  API_VERSION = '2010-04-01'

  # Twilio AccountSid and AuthToken
  ACCOUNT_SID = 'ACab0c2c913409094f2055060d08a9a482'
  ACCOUNT_TOKEN = 'ff3c2e3b9b56ba78449666ff59b8e526'

  # Outgoing Caller ID previously validated with Twilio
  CALLER_ID = '4155992671';

  # Create a Twilio REST account object using your Twilio account ID and token
  
  
  
  def huzzah
    # ===========================================================================
    # 6. Send an SMS Message to 415-555-1212
    #    uses a HTTP POST, and a new variable t for the information (because it needs "Body")
    
    account = Twilio::RestAccount.new(ACCOUNT_SID, ACCOUNT_TOKEN)
    
    t = {
        'From' => CALLER_ID,
        'To'   => phone,
        'Body' => message
    }
    resp = account.request("/#{API_VERSION}/Accounts/#{ACCOUNT_SID}/SMS/Messages",
          "POST", t)
  end
  
end
