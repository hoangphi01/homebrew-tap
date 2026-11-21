cask "fotollection" do
  version "0.14.4"
  sha256 "fb58dcd4255e7ce2bf611e7f08fca8452a432f894202e4069ac85d8b36996014"

  url "https://github.com/hoangphi01/fotollection/releases/download/v#{version}/Fotollection_#{version}_universal.dmg",
      verified: "github.com/hoangphi01/fotollection/"
  name "Fotollection"
  desc "Prepare trip photos for printing: best shots, date stamp, print sizes, offline"
  homepage "https://fotollection.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Fotollection.app"

  zap trash: [
    "~/Library/Application Support/com.hoangphi01.fotollection",
    "~/Library/Caches/com.hoangphi01.fotollection",
    "~/Library/Preferences/com.hoangphi01.fotollection.plist",
    "~/Library/Saved Application State/com.hoangphi01.fotollection.savedState",
    "~/Library/WebKit/com.hoangphi01.fotollection",
  ]

  caveats <<~EOS
    Fotollection's builds are not signed yet: on first launch, open
    System Settings → Privacy & Security and choose Open Anyway.
  EOS
end
