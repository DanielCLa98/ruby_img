require 'json'

Handler = Proc.new do |req, res|
  res.status = 200
  res['Content-Type'] = 'application/json'
  
  res.body = JSON.generate({
    message: "¡Hola, Mundo desde Ruby!",
    time: Time.now.to_s
  })
end