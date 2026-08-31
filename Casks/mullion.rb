cask "mullion" do
  version "1.1.0"
  sha256 "7718680504dd40f5964f60e19b3d8a5733889e09eb570b2b1fefa37c544459cc"

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
