class Trmd < Formula
  include Language::Python::Virtualenv

  desc "Translate Markdown using OpenAI"
  homepage "https://github.com/rioriost/homebrew-trmd/"
  url "https://files.pythonhosted.org/packages/18/28/6d3fbdf1f83cf5894562d2d5a834406eb49b7aea933b6a8efdeefe34e092/trmd-0.1.36.tar.gz"
  sha256 "a01c12ab5c01c74c3e3e37501c27d660c8810903670d6f073c855bd2961e4f14"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
    system libexec/"bin/python", "-m", "pip", "install", "openai"
  end

  test do
    system "#{bin}/trmd", "--help"
  end
end
