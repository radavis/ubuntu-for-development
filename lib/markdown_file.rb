# markdown files in `./src` contain bash commands and configuration

class MarkdownFile
  def self.all
    Dir.glob("./src/**/*.md")
      .map { |filename| new(filename) }
  end

  attr_reader :filename

  def initialize(filename)
    @filename = filename
  end

  def to_bash_script
    # to_s.match(/```bash(.+?)```/m)  # doesn't catch multiple, only the first occurance
    readlines_between.join
  end

  def to_s
    File.read(filename)
  end

  def readlines_between(prefix: "```bash\n", suffix: "```\n")
    result = []
    reading = false
    File.open(filename).each_line do |line|
      if line.start_with?(prefix) || line.start_with?(suffix)
        reading = !reading
        next
      end
      next unless reading
      line.gsub!(/^\$\s+/, '')
      result << line
    end
    result
  end
end
