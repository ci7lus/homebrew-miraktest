cask "miraktest" do
  version "2.0.0-rc.2"

  if Hardware::CPU.arm?
    sha256 "03bf11e86ea2361539dabc4558514ac023343fe7ed9351d4b99120187bdc71fe"
  else
    sha256 "7d762a3237391a3b76279d58604cb6195c2ce5c7c58005f05f428c02f6650941"
  end

  url "https://github.com/ci7lus/MirakTest/releases/download/v#{version}/MirakTest-#{version}#{Hardware::CPU.arm? ? "-arm64" : ""}.dmg"
  name "MirakTest"
  desc "Implementation study of digital television viewing application for Mirakurun"
  homepage "https://github.com/ci7lus/MirakTest"

  app "MirakTest.app"

  zap pkgutil: [
    "~/Library/Caches/io.github.ci7lus.miraktest.helper.Renderer",
    "~/Library/Saved Application State/io.github.ci7lus.miraktest.savedState"
  ]
  zap trash: [
    "~/Library/Application Support/MirakTest"
  ]
end
