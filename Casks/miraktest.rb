cask "miraktest" do
  version "2.0.0-rc.1"

  if Hardware::CPU.arm?
    sha256 "d798e4b232ce3dc6053cbdca047771b534871c24147434fbb59c6629e7fd8865"
  else
    sha256 "326eb6dfc66281dbeed0b8b134e83b682db8b4837aa4f6423ae3633976177805"
  end

  url "https://github.com/ci7lus/MirakTest/releases/download/v#{version}/MirakTest-#{version}#{Hardware::CPU.arm? ? "-arm64" : ""}.dmg"
  name "MirakTest"
  desc "Implementation study of digital television viewing application for Mirakurun"
  homepage "https://github.com/ci7lus/MirakTest"

  app "MirakTest.app"

  zap trash: [
    "~/Library/Caches/io.github.ci7lus.miraktest.helper.Renderer",
    "~/Library/Saved Application State/io.github.ci7lus.miraktest.savedState"
  ]
end
