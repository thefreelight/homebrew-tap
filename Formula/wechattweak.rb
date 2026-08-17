class Wechattweak < Formula
  desc "Command-line tool for tweaking WeChat on macOS"
  homepage "https://github.com/thefreelight/WeChatTweak"
  url "https://github.com/thefreelight/WeChatTweak/releases/download/0.0.2/wechattweak"
  version "0.0.2"
  sha256 "ebf6101ec8b4ae4e00faf9af3810ce5e5e632ead091b7fc70da1ed424f539534"
  license "AGPL-3.0-only"

  depends_on :macos

  def install
    bin.install "wechattweak"
  end

  test do
    assert_match "USAGE: wechattweak", shell_output("#{bin}/wechattweak --help")
  end
end
