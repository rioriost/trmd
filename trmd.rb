class Trmd < Formula
  include Language::Python::Virtualenv

  desc "Translate Markdown using OpenAI"
  homepage "https://github.com/rioriost/homebrew-trmd/"
  url "https://files.pythonhosted.org/packages/eb/c9/a94103d09a9ffd995acf9e1893cb825f8bd530c8a65faeb36d33bcfe01f8/trmd-0.1.34.tar.gz"
  sha256 "1305724cbb944585566deb234da80fb61699da9eba311acbf883fc4dd39a9193"
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
