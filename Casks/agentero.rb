cask "agentero" do
  version "0.15.1"

  on_macos do
    on_arm do
      sha256 "60eccb95e04e7febb15c4ac1d3f0c44d45ea1d87c89673e5b1eac034f29afd86"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "fe87d728268271607665d21e13cfc3e5b6db20176c526ade6247051257d6a9d4"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "51fac022f36caf56beb28620907fcf02054d5739568e6b422d6bb38ce75ba9e3"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
