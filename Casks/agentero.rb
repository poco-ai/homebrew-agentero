cask "agentero" do
  version "0.11.6"

  on_macos do
    on_arm do
      sha256 "79e9b1216ab3142f3271993a62d6b1fd94a89ec3d2c7e92ff739b9e3083f1045"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "a7c18a3adcad6ec208235b08f0baa41e00274b6649904a366eb66e7f8f11905c"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "102090d1af553c998ac9ede1d654178e82baa882892df62dc05fb056fcc9d2bd"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
