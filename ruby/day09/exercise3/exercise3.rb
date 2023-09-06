class Printer
  def initialize(data, formatter = PdfFormatter)
    @data = data
    @formatter = formatter
  end

  def print_pdf
    @formatter.new.format(@data)
  end
end

class PdfFormatter
  def format(data)
    "#{data}"
  end
end

class HtmlFormatter
  def format(data)
    "#{data}"
  end
end

print1 = Printer.new('123456789')
puts print1.print_pdf
