# frozen_string_literal: true

require "unix"

module Unix
  module Tree
    module_function

    def write(dir, file_dir, file = "BINARYS")
      IO.write("#{file_dir}/#{file}", "")

      cmd = "tree #{dir}"
      IO.popen(cmd) do |r|
        lines = r.readlines

        for line in lines
          print line if Unix.info
          IO.write(file, line, mode: "a")
        end
      end
    end
  end
end
