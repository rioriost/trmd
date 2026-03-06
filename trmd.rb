class Trmd < Formula
  include Language::Python::Virtualenv

  desc "Translate Markdown using OpenAI"
  homepage "https://github.com/rioriost/homebrew-trmd/"
  url "https://files.pythonhosted.org/packages/cd/f0/8aaf49f4749e46db498e6151f9778171c066f56d6b9e62920793a467e3c5/trmd-0.1.35.tar.gz"
  sha256 "a4ad7225eb9188e7479b63f7a54ae3cc4edd202a134896a376d9d67f1a93bf11"
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
