module YoutubeDL
  class Downloader
    def self.download_video(url)
      `ruby-youtube-dl --no-progress --get-filename  #{url}`.strip
    end

    def self.download_audio(url, location="/tmp/")
      output = `ruby-youtube-dl --no-progress --extract-audio --audio-format=mp3  --output="#{location}%(stitle)s-%(uploader)s-%(autonumber)s.mp3" #{url}`.strip
      file_path = output.match(/.+Destination: (.+)/)[1]

      open(file_path)
    end
  end
end
