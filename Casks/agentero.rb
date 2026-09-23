cask "agentero" do
  version "0.11.3"

  on_macos do
    on_arm do
      sha256 "b1d9ac38e12d0831a5f8d3b394e6aa655ebe0a1ad1a80d6aa1da730c1e22e44a"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "d4a150359058447c2dc15a3269b9877fbb7ca8f5e361c3fa8da15f9a42d293b0"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "00e6d1b85317545e0573b7bdd1a910989eb590efd7f17397a1a23f8346bad87b"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
