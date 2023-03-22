require 'sinatra'

set :port, 80

begin
  #text file
  log_file = File.open("Honeypot.txt", "a")
rescue SystemCallError => e
  #log the error message
  puts "Error opening log file: #{e}"
  #exit
end


get '/' do
  #Logging Process
  log_entry = "Triggered by #{request.ip} at #{Time.now}\n"
  log_entry << "User-Agent: #{request.user_agent}\n"
  log_entry << "Referer: #{request.referer}\n"
  # Change the file(audio.mp3) if you want to play any audio
  # system("echo -ne '\007'")
  system("vlc-wrapper audio.mp3")
  log_file.write(log_entry)

  #HTML Code change this to display what you need
  html = <<-HTML
  <html>
   <head>
    <style>
      body {
        font-family: sans-serif;
        text-align: center;
      }
      h1 {
        font-size: 36px;
        margin-top: 50px;
      }
      p {
        font-size: 18px;
        margin-top: 20px;
      }
    </style>    
  </head> 
  <body>
    <h1>Welcome ( Change this to display what you need )</h1>
    <p>Sorry... You have no access </p>
  </body>
  </html>
  HTML

  return html
end

#closing txt
