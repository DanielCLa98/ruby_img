Handler = Proc.new do |req, res|
    res.status = 200
    res['Content-Type'] = 'text/html'
    res.body = <<-HTML
      <!DOCTYPE html>
      <html lang="es">
      <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Hola Mundo Ruby</title>
          <style>
              body {
                  font-family: Arial, sans-serif;
                  display: flex;
                  justify-content: center;
                  align-items: center;
                  min-height: 100vh;
                  margin: 0;
                  background-color: #f0f2f5;
              }
              .container {
                  text-align: center;
                  padding: 20px;
                  background-color: white;
                  border-radius: 8px;
                  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
              }
          </style>
      </head>
      <body>
          <div class="container">
              <h1>¡Hola, Mundo desde Ruby!</h1>
              <p>Esta es una aplicación Ruby en Vercel</p>
              <p>Tiempo del servidor: #{Time.now}</p>
          </div>
      </body>
      </html>
    HTML
  end