cask "agentero" do
  version "0.2.1"

  on_macos do
    on_arm do
      sha256 "090128732ef378e0c5119f375f2b5fcd2517a68d3aa8ae2db30f23b8dcbc7553"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "6d33a9fccdcd9439851c42cf543893b3a9858da2b74c9f562b1a78ce7ce2e539"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "b664041636be23a01b43d7952d5d13ccd36db0c417f15b055fcd3b681fcfe224"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
