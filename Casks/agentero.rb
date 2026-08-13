cask "agentero" do
  version "0.6.0"

  on_macos do
    on_arm do
      sha256 "5bd16baeefe5a8c193d260b16bad4ffc0fb7c3d5835f7ef4f1a2444f4fecc81b"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "47183a7d17e98fcb66c445b2b49199714314ed0e79985785567ebbe57115f22b"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "7760fb95709204435eef7b1a0f140cc70f219b6198e4e095f232841de867ec9b"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
