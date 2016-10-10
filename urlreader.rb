require "open-uri"

full_url = "http://www.betexplorer.com/soccer/russia/premier-league/"
remote_data = open(full_url).read
my_local_file = open("my-downloaded-page.html", "w") 
my_local_file.write(remote_data)
my_local_file.close