cask "miraktest" do
  version "2.0.0-rc.3"

  if Hardware::CPU.arm?
    sha256 "01aed1137fa816f91e8fd31ba5ea4d24f6a5c502119da51e4b2655fde4a240fa"
  else
    sha256 "a093b0b597adaf200ed78377366869e7e916f7c435b1df895b35ba156c401b33"
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
