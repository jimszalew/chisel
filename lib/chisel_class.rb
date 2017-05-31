class Chisel

  attr_reader :input_file,
              :output,
              :markdown

  def initialize(input_file, output)
    @markdown   = File.read(input_file).chomp
    @input_file = input_file
    @output     = output
    write_to_file(convert)
  end
end
