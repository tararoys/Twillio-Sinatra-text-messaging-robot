get '/' do
# Look in app/views/index.erb
 
  puts params 
  number = params[:From]
  #"<Response><Message><Body> Tara</Body><MediaUrl>https://demo.twilio.com/owl.png</MediaUrl></Message></Response>"
  
  
twiml = Twilio::TwiML::Response.new do |r|
    r.Message do |message|
      if number.to_s == "+1112223333"
      message.Body "Hi Dude"
      else
        message.Body "Hello.  Who are you?" 
      end 
      message.MediaUrl "https://demo.twilio.com/owl.png"
      message.MediaUrl "https://demo.twilio.com/logo.png"
    end
  end
twiml.text

end
