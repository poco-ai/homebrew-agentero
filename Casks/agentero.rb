cask "agentero" do
  version "0.7.0"

  on_macos do
    on_arm do
      sha256 "357f354b70ced0bf9f9cbe5eeaa7913f5bdeff43534a8ff7ceb683f648752071"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "e95ee75b6c14888c1c2c5c6966306d7b1f5fa10960efdb1bfd42961b2292b4bd"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "fea1b6435f1e8f96b583e6a8cf8229da62fa6f69abb9fa3c40724309e0e652da"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
