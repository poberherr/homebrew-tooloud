cask "tooloud" do
  version "1.0.0"
  sha256 "beb1bd3a50f1892a71812a1705e959889041b40110df88f32ee23a4ea10e629c"

  url "https://github.com/poberherr/tooLoud/releases/download/v#{version}/tooLoud.dmg"
  name "tooLoud"
  desc "Menu bar noise monitor that alerts when you're too loud"
  homepage "https://github.com/poberherr/tooLoud"

  depends_on macos: ">= :sonoma"

  app "tooLoud.app"

  zap trash: [
    "~/Library/Preferences/com.tooLoud.app.plist",
  ]
end
