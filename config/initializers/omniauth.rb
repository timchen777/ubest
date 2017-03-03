OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook, '605593792965258', 'af1d23b14a7e59751716913dbca3aa80', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
#   provider :facebook, '1908361179399739', 'c17b3208911259bd04e91458dee67df7', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
  provider :facebook, '1274286925988098', '6e8b130d0990adaba563389c4367f8f3', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end