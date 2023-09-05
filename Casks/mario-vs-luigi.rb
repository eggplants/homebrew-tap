cask "mario-vs-luigi" do
  version "1.7.1.0-beta"
  sha256 "fcd77cbe26216a0deffe1885ee6528b6fbabddb572dfbfb35e0281a3cdcd2a87"

  url "https://github.com/ipodtouch0218/NSMB-MarioVsLuigi/releases/download/v#{version}/MarioVsLuigi-MacOS-v#{version}.zip",
      verified: "github.com/ipodtouch0218/NSMB-MarioVsLuigi/"
  name "New Super Mario Bros. - Mario Vs Luigi"
  desc "Standalone Unity remake of New Super Mario Bros DS' multiplayer gamemode"
  homepage "https://ipodtouch0218.itch.io/nsmb-mariovsluigi"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MarioVsLuigi-MacOS.app"

  zap trash: "~/Library/Application Support/MarioVsLuigi-MacOS*"
end
