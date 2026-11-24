cask "agentero" do
  version "0.18.2"

  on_macos do
    on_arm do
      sha256 "19fe0600fd80dc6703fd422a9d0d55315f11d12da4117d02d91bf56f67b920ad"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "8464701e09b3308084fda09fddf8c0505a2a32aacc216b83f553bfd06f7a61a3"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "e291df6c893ef89108b3c557fb7ecbc9654476790307be90399663fe2f5567b3"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
