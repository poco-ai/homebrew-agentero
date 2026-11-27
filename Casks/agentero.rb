cask "agentero" do
  version "0.19.0"

  on_macos do
    on_arm do
      sha256 "8facb3190c4dc2e8a99931fd5e87d901b57731d52c25d62d13faa2ef48086231"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "586d3688adca602ab2d4fa042ef52731a5d13332c7484f45f139f4bb6972b313"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "d0784bb3606cebb4ac21951a18b4432c559c0ff23c97944fcf07e45bd676bb2e"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
