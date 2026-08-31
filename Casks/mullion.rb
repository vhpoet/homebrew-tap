cask "mullion" do
  version "1.0.0"
  sha256 "REPLACED_BY_RELEASE_SCRIPT"

  url "https://github.com/vhpoet/mullion/releases/download/v#{version}/Mullion-#{version}.dmg"
  name "Mullion"
  desc "Keyboard-driven window snapping"
  homepage "https://github.com/vhpoet/mullion"

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
