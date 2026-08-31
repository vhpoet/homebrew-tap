cask "mullion" do
  version "1.0.0"
  sha256 "e0b6888c117e4679407713f40c4ad13268addb4bc99812eae819f70e8acc76cf"

  url "https://github.com/vhpoet/mullion-releases/releases/download/v#{version}/Mullion-#{version}.dmg"
  name "Mullion"
  desc "Keyboard-driven window snapping"
  homepage "https://github.com/vhpoet/mullion-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Mullion.app"

  zap trash: [
    "~/Library/Caches/com.vh.mullion",
    "~/Library/HTTPStorages/com.vh.mullion",
    "~/Library/Preferences/com.vh.mullion.plist",
  ]
end
