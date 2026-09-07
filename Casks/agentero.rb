cask "agentero" do
  version "0.9.5"

  on_macos do
    on_arm do
      sha256 "52cdb54435b77fcd0917b87e32938881a0da1b2085f5ad753eb94c0f992cbda5"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "70c10673fb059860019c94c445ee63f2c9aa46ad6313bb5e5685e64ddce407d6"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "671e787694f231c1affff03c8e15d4d9f7d3f8c3b24cdc4d619696fb710f7c27"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
