# markdown files in `./src` contain bash commands and configuration

class MarkdownFile
  def self.all
    Dir.glob("./src/**/*.md")
      .map { |filename| new(filename) }
  end

  def from_files(filenames)
    filenames.map { |filename| new(filename) }
  end

  attr_reader :filename

  def initialize(filename)
    @filename = filename
  end

  def write_bash_script
    return false if to_bash_script.empty?

    File.open(bash_script_filename, "w") do |file|
      file.write(to_bash_script)
      file.chmod(0755)
    end
  end

  def bash_script_filename
    result, _ = filename.split(".md")
    "#{result}.sh"
  end

  def to_bash_script
    result = []
    readlines_between.each do |bash_block|
      if bash_block.first =~ /^# filename: /
        _, filename = bash_block.shift.split(/^# filename: /)
        filename.chomp!
        bash_block.unshift("tee --append #{filename} <<-EOF\n")
        bash_block.push("EOF\n")
      end
      result << bash_block.join("\n")
    end

    if !result.empty?
      result.unshift("#!/usr/bin/env bash\n", "set -Eeuxo pipefail\n", "\n")
    end
    result.join
  end

  def readlines_between(prefix: "```bash\n", suffix: "```\n")
    group, result = [], []
    reading = false

    File.open(filename).each_line do |line|
      if line.start_with?(prefix)
        reading = true
        next
      end

      if line.start_with?(suffix)
        reading = false
        result << group
        group = []
      end

      next unless reading
      line.gsub!(/^\$\s+/, '')
      group << line
    end

    result
  end
end
