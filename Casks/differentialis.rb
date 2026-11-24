cask "differentialis" do
  version "0.3.1"
  sha256 "b31aa0733e40185a29791faf8f0d53d66d1d56fec002afeb056f6eccd353bf4c"

  url "https://github.com/yennster/differentialis/releases/download/v#{version}/Differentialis-#{version}.dmg"
  name "Differentialis"
  desc "Diff and merge app for text, images, folders and git history"
  homepage "https://www.differentialis.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Differentialis.app"

  zap trash: [
    "~/Library/Application Support/app.differentialis.Differentialis",
    "~/Library/Caches/app.differentialis.Differentialis",
    "~/Library/Preferences/app.differentialis.Differentialis.plist",
    "~/Library/Saved Application State/app.differentialis.Differentialis.savedState",
  ]
end
