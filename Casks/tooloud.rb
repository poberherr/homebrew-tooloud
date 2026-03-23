cask "tooloud" do
  version "1.0.0"
  sha256 "e44d1999e0a4f8ea541970de902be6bf0024c714a33fb7a4a3e61aef0e465a24"

  url "https://github.com/poberherr/homebrew-tooloud/releases/download/v#{version}/tooLoud.dmg"
  name "tooLoud"
  desc "Menu bar noise monitor that alerts when you're too loud"
  homepage "https://github.com/poberherr/tooLoud"

  depends_on macos: ">= :sonoma"

  app "tooLoud.app"

  postflight do
    system "xattr", "-dr", "com.apple.quarantine", "#{appdir}/tooLoud.app"
  end

  zap trash: [
    "~/Library/Preferences/com.tooLoud.app.plist",
  ]
end
