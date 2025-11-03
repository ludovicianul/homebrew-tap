# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Timi < Formula
  desc "Timi is a command line application that allows you to chat with your git history."
  homepage "https://github.com/ludovicianul/timi"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/ludovicianul/timi/releases/download/timi-1.0.7/timi_macos_amd64_1.0.7.tar.gz"
        sha256 "68b3f7ed7bd06e6b3a09db760bb6abef59255026831ab24ce1ccfcd354938ee9"
      elsif Hardware::CPU.arm?
        url "https://github.com/ludovicianul/timi/releases/download/timi-1.0.7/timi_macos_arm64_1.0.7.tar.gz"
        sha256 "e6e89e3c31e4357f4b25fd48ab2e178335de7374405a702054bfa99275bdb84c"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/ludovicianul/timi/releases/download/timi-1.0.7/timi_linux_amd64_1.0.7.tar.gz"
        sha256 "68f6fcfc5c384bcbb5d68bd78902f9b25258668f20d4775048e0b558114f79ca"
      elsif Hardware::CPU.arm?
        url "https://github.com/ludovicianul/timi/releases/download/timi-1.0.7/timi_linux_arm64_1.0.7.tar.gz"
        sha256 "5bdf8bea5ba69d79c528445b890f4e069f17106a3d810ec0a808bed07e2547ec"
      end
  else
    odie "Please use the uberjar version: https://github.com/ludovicianul/timi/releases/download/timi-1.0.7/timi_uberjar_1.0.7.tar.gz"
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
