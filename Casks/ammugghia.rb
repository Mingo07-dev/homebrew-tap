cask "ammugghia" do
  version "1.8.1"
  sha256 "bc227d3f32fb880792ea526def3c325356f38abf9ff8903a7b4a1d8593344737"

  url "https://github.com/Mingo07-dev/Ammugghia/releases/download/v#{version}/Ammugghia-#{version}.dmg"
  name "Ammugghia"
  desc "Disk cleaner for developers that refuses rather than guesses"
  homepage "https://github.com/Mingo07-dev/Ammugghia"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Ammugghia.app"

  # Only Ammugghia's own files: nothing it cleaned is touched.
  zap trash: [
    "~/Library/Application Support/Ammugghia",
    "~/Library/Logs/Ammugghia",
    "~/Library/Preferences/it.ammugghia.plist",
    "~/Library/Saved Application State/it.ammugghia.savedState",
  ]
end
