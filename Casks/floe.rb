cask "floe" do
  version "0.4.0"
  sha256 "f006d8b1d806e8b822fff091fa7d73b494a68ee95c1600c50ff01ff4a8e7c130"

  url "https://github.com/thaw-app/Floe/releases/download/#{version}/Floe.dmg"
  name "Floe"
  desc "Launcher for macOS that runs Raycast extensions"
  homepage "https://github.com/thaw-app/Floe"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Floe.app"
end
