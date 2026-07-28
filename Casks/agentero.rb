cask "agentero" do
  version "0.2.3"

  on_macos do
    on_arm do
      sha256 "695ab33bf7a4e361c4acd0f49f46038883523b4e5ff697d033530058721fb19f"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "b2511a589908de316c2d44d85a5b95a177369b1abbb30488e670dd848a9c5525"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "5243a966fbd2d6e7f7e444e4681803e8eaa4848262dd8bf1323450103591387f"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
