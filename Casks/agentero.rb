cask "agentero" do
  version "0.4.0"

  on_macos do
    on_arm do
      sha256 "34be896e64aa797512b6b73912d22ff87d7277049162c114570e29e3faebf0af"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "41edda093588c51bc276a9932c648fa0a623cf70265eb135707da21370622079"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "93e5d777fb0b967c7e4a4e685febb673db596094d7a0be099daaa294227f73e4"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
