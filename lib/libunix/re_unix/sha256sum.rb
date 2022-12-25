# frozen_string_literal: true

require "digest"

module ReUnix
  module SHA256SUM
    def write(dir, file = "SHA256SUM")
      d = Dir.new(dir)
      Dir.chdir dir do
        IO.write(file, "")

        d.children.sort!.each do |child|
          sha256sum = Digest::SHA256.file(child).hexdigest
          line = "#{sha256sum}  #{child}\n"
          print line if SHA256SUM.info
          IO.write(file, line, mode: "a")
        end
      end
    end
  end
end
