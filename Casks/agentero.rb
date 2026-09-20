cask "agentero" do
  version "0.11.2"

  on_macos do
    on_arm do
      sha256 "745bd26bb9beb2ba3350548d21af82393c07ca9a02d7d3e61209e434ae94db51"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "376893d57a81bde5b91f8834325d37d7772328763eef70074cbdc580b9adee5d"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "ff64b0ecf0c857ba37a2267908172f40f772d81f9389a718059020d103d6344a"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
