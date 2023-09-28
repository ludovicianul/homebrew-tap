# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Hq < Formula
  desc "lightweight command line HTML processor using CSS and XPath selectors"
  homepage "https://github.com/ludovicianul/hq"

  if OS.mac?
        if Hardware::CPU.intel?
          url "https://github.com/ludovicianul/hq/releases/download/hq-1.3.2/hq_macos_amd64_1.3.2.tar.gz"
          sha256 ""
        elsif Hardware::CPU.arm?
          url "https://github.com/ludovicianul/hq/releases/download/hq-1.3.2/hq_macos_arm64_1.3.2.tar.gz"
          sha256 "fa7d82f66ce187bd8bd1c443c70aa9584dea1d933b9984b2b7080a29fbe0397a"
        end
    elsif OS.linux?
        if Hardware::CPU.intel?
          url "https://github.com/ludovicianul/hq/releases/download/hq-1.3.2/hq_linux_amd64_1.3.2.tar.gz"
          sha256 "d642e250c66185673745416adc94ee6f9d287ddd7e9c020cab6492d4a3ec6c1d"
        elsif Hardware::CPU.arm?
          url "https://github.com/ludovicianul/hq/releases/download/hq-1.3.2/hq_linux_arm64_1.3.2.tar.gz"
          sha256 "f3a5d0d8853cd2febe441a2d731df3849f4376758a64d105a20b84835ef02dbe"
        end
    else
      odie "Please use the uberjar version: https://github.com/ludovicianul/hq/releases/download/hq-1.3.2/hq_uberjar_1.3.2.tar.gz"
    end

  license "MIT"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    bin.install 'hq'
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test hq`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
