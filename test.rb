require 'pony'

Pony.options = {
  :via => 'smtp',
  :via_options => {
    :address              => 'smtp.gmail.com',
    :port                 => '587',
    :enable_starttls_auto => true,
    :user_name            => 'naominickerson',
    :password             => 'smilodon.7',
    :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
    :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
  }
}

Pony.mail(:to => "naominickerson@gmail.com",:subject=>"Wow. an email",:body=>"this is an email. Bye.")