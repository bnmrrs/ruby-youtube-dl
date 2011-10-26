module YoutubeDL
  class Downloader
    def self.download_video(url)
      `ruby-youtube-dl --no-progress --get-filename -q #{url}`.strip
    end

    def self.download_audio(url, location="/tmp/")
      `./youtube-dl.py --no-progress --extract-audio --audio-format=mp3  --output="#{location}%(stitle)s-%(uploader)s-%(autonumber)s.mp3" #{url}`.strip
    end
  end
end
