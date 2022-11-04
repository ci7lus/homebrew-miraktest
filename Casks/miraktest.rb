cask "miraktest" do
  version "2.0.0-rc.4"

  if Hardware::CPU.arm?
    sha256 "c53d3314f26acc815cd058051c9056ab0047db5a6b241281b66e78891ab471f2"
  else
    sha256 "c4be26af275ba29730b10d173992d85a492977ab1227e26001702b5d69809c26"
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
