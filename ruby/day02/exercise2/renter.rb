class Renter
  attr_accessor :name, :email, :phone, :document_list

  def initialize(name, email, phone, document_list)
    @name = name
    @email = email
    @phone = phone
    @document_list = document_list
  end

  def add_documents(documents)
    @document_list << documents
  end

  def print
    puts("#{name}")
    puts("#{email}")
    puts("#{phone}")
    puts("#{document_list}")
  end
end
