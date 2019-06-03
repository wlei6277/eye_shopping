# require 'httparty'

# url = "https://rest.viglink.com/api/account"

# params = {
#   format: "txt",
#   key: '9bcc0414147bfcc5bf99d4fa5ec11db3',
#   out: "http://www.amazon.com/gp/product/B00KLDB866",
#   loc: "http://www.gopromocodes.com/store/Amazon.html",
#   ref: "http://othersite.com"
# }
# p params[:key];

# response = HTTParty.get(url, query: params)
# puts response
require 'httparty'

url = "https://rest.viglink.com/api/account"

headers = {Authorization: "secret {9bcc0414147bfcc5bf99d4fa5ec11db3}"}

response = HTTParty.get(url, headers: headers)
puts response

