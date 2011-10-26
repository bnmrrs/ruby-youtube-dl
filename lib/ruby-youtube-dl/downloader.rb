module YoutubeDL
  class Downloader
    def download_video(url)
      `youtube-dl --no-progress #{url}`
    end

    def download_audio(url)
      `youtube-dl --no-progress --extract-audio --audio-format=mp3 -tA #{url}`
    end
  end
end
