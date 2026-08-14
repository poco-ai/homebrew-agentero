cask "agentero" do
  version "0.6.1"

  on_macos do
    on_arm do
      sha256 "5cbc2df34648e6c23dcb7eb30b80cf8c63faa3f80b0da01e66d5282029843850"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "ae4018a7fe9aa094f2ae3016a49d486dd606975d86da70816ac57a2d29f306e6"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "8df9ff4313f4f03754fc992726087fbb04d94ed884161d44dc9d6c80ad3b1e44"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
