class UserNotifierMailer < ApplicationMailer
	default :from => 'jose.leonardo.saenz.ariza@everis.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email()
#    mail( :to => 'joseleonardo.sa@gmail.com',
    mail( :to => 'carlos.eduardo.castro@everis.com',    	
    :subject => 'Thanks for signing up for our amazing app' )
  end
end
