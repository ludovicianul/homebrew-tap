# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Timi < Formula
  desc "Timi is a command line application that allows you to chat with your git history."
  homepage "https://github.com/ludovicianul/timi"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/ludovicianul/timi/releases/download/timi-1.0.4/timi_macos_amd64_1.0.4.tar.gz"
        sha256 "27ab7fc92d2c157969ad33821ea3a60ad53d606e2003f1e377dbb0ce7e2e3322"
      elsif Hardware::CPU.arm?
        url "https://github.com/ludovicianul/timi/releases/download/timi-1.0.4/timi_macos_arm64_1.0.4.tar.gz"
        sha256 "b2a3a33cdea50366338b305428808633ead00ef3074546451cb74b5f989f34af"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/ludovicianul/timi/releases/download/timi-1.0.4/timi_linux_amd64_1.0.4.tar.gz"
        sha256 "c1d6c29e6307881a878a8dc2c644e6a24d49226cc726abfbe8a930a89f789121"
      elsif Hardware::CPU.arm?
        url "https://github.com/ludovicianul/timi/releases/download/timi-1.0.4/timi_linux_arm64_1.0.4.tar.gz"
        sha256 "ff3422f3b4e50883787341509ad8ec25f2d9f50919637e279b9569aa9a9be2ff"
      end
  else
    odie "Please use the uberjar version: https://github.com/ludovicianul/timi/releases/download/timi-1.0.4/timi_uberjar_1.0.4.tar.gz"
  end

  license "MIT"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    bin.install 'timi'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test timi`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
