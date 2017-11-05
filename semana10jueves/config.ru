# ejercicio 6
# config.ru
require 'rack'
class MiPrimeraWebApp
  def call(env)
    if env['REQUEST_PATH'] == '/index'
      [200, { 'Content-Type' => 'text/html' }, ['<h1>Est&aacute;s en el index</h1>']]
    elsif env['REQUEST_PATH'] == '/otro'
      [200, { 'Content-Type' => 'text/html' }, ['<h1>Est&aacute;s en otro landing!</h1>']]
    else env['REQUEST_PATH']
      [404,
      { 'Content-Type' => 'text/html' },
        ["<!DOCTYPE html>
          <html>
          <head>
            <title>The page you were looking for doesn't exist (404)</title>
            <meta name='viewport' content='width=device-width,initial-scale=1'>
            <style>
            .rails-default-error-page {
              background-color: #EFEFEF;
              color: #2E2F30;
              text-align: center;
              font-family: arial, sans-serif;
              margin: 0;
            }
            .rails-default-error-page div.dialog {
              width: 95%;
              max-width: 33em;
              margin: 4em auto 0;
            }
            .rails-default-error-page div.dialog > div {
              border: 1px solid #CCC;
              border-right-color: #999;
              border-left-color: #999;
              border-bottom-color: #BBB;
              border-top: #B00100 solid 4px;
              border-top-left-radius: 9px;
              border-top-right-radius: 9px;
              background-color: white;
              padding: 7px 12% 0;
              box-shadow: 0 3px 8px rgba(50, 50, 50, 0.17);
            }
            .rails-default-error-page h1 {
              font-size: 100%;
              color: #730E15;
              line-height: 1.5em;
            }
            .rails-default-error-page div.dialog > p {
              margin: 0 0 1em;
              padding: 1em;
              background-color: #F7F7F7;
              border: 1px solid #CCC;
              border-right-color: #999;
              border-left-color: #999;
              border-bottom-color: #999;
              border-bottom-left-radius: 4px;
              border-bottom-right-radius: 4px;
              border-top-color: #DADADA;
              color: #666;
              box-shadow: 0 3px 8px rgba(50, 50, 50, 0.17);
            }
            </style>
          </head>
          <body class='rails-default-error-page'>
            <!-- This file lives in public/404.html -->
            <div class='dialog'>
              <div>
                <h1>The page you were looking for doesn't exist.</h1>
                <p>You may have mistyped the address or the page may have moved.</p>
              </div>
              <p>If you are the application owner check the logs for more information.</p>
            </div>
          </body>
          </html>"
        ]
      ]
    end
  end
end
run MiPrimeraWebApp.new
