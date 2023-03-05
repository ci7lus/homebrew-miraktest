cask "miraktest" do
  version "2.0.0"

  if Hardware::CPU.arm?
    sha256 "1cf14535bb4524197e6d03e0f33c595377a92b9086479f0404b5e327ee4e9b12"
  else
    sha256 "95e4e1dba1d085f56ebbc544a5c66ee7631b4c0c35aba6b3337573517bdc3665"
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
