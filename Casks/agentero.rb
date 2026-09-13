cask "agentero" do
  version "0.10.3"

  on_macos do
    on_arm do
      sha256 "62d43988bac2cb0b55ebca2d3c331a3d0cb13bfb6b32ad0df7962b8786c8719d"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "adb26c80b53ce101793c178a6fa7f86449efec8c188198261e4b2245084383f2"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "9eedd3a13c9e9597962dd8bff70f7c1a455e57bc26913d8bb8dddd55db9fee12"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
