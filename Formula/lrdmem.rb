class Lrdmem < Formula
  include Language::Python::Virtualenv

  desc "Shared git-backed memory store for AI coding agents"
  homepage "https://github.com/larodiel/lrdmem"
  url "https://files.pythonhosted.org/packages/2a/1c/7d150b994094cc37ae8846674b30207bdb837af985c0203c72ab7a144921/lrdmem-0.3.0.tar.gz"
  sha256 "1ef5ce5b54ea3d7b8e975c5d819af7ff3a736fadd01a2dbaadbcc2a3d0a8041e"
  license "MIT"

  depends_on "python@3.13"

  # No resources: lrdmem has no runtime deps. pip_install builds the sdist with build isolation
  # (default), so pip fetches setuptools itself; no setuptools resource or depends_on is needed.
  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lrdmem --version")
  end
end
