require 'pry'

class Chisel

  attr_reader :input_file,
              :output,
              :markdown

  def initialize(input_file, output)
    @markdown   = File.read(input_file).chomp
    @input_file = input_file
    @output     = output
  end

  def write_to_file(output)
    renderer  = Redcarpet::Render::HTML.new
    engine    = Redcarpet::Markdown.new(renderer)
    md_source = input_file
    new_file = File.new(output, "w+")
    new_file.write(engine.render(md_source))
  end
end
binding.pry
""
