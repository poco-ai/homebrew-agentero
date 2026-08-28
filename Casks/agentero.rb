cask "agentero" do
  version "0.9.1"

  on_macos do
    on_arm do
      sha256 "4945111f74cef8f12cd9bd547d888d696b4761a692b879e7f5116c4fcedc6a99"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "00485cbef01126d0a75b7ab7f883f0b2aea7924fc91159ef67cff3e11b0724ff"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "86aeca824d8aca5ba71e46a768fa8415118acee87a47072e13e7d7d9cc9327aa"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
