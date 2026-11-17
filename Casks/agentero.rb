cask "agentero" do
  version "0.16.2"

  on_macos do
    on_arm do
      sha256 "9b437042e2cdeb821637601297f32c2d90404f97ef08e621919d335a6bd33267"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "ec7da5167b2c3ad925622cee825387ca813aabf83ed835ef0ddc40952cb41150"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "9ea6d0aa9e92b141d02696f8faac6dd0140344d52b39aa32c7e3f8697f203978"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
