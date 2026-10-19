cask "agentero" do
  version "0.12.0"

  on_macos do
    on_arm do
      sha256 "ab203a8ef29e572fe91286e3396ecc77c4767fbd502dac64770a7baabff4bfbb"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "707bce2878f43d5d75115317b445f549d9f1469e13692e369f6b7a7780ec3051"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "6a5adde4afad499e123be4883085ea3a1dd37bfc6e0762ce88be9d76a4bf42b4"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
