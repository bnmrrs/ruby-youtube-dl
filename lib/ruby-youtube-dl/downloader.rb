module YoutubeDL
  class Downloader
    def self.download_video(url)
      `ruby-youtube-dl --no-progress --get-filename -q #{url}`
    end

    def self.download_audio(url)
      `ruby-youtube-dl --no-progress --get-filename --extract-audio --audio-format=mp3 -tAqs #{url}`
    end
  end
end
