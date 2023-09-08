require './customer'
require './item'
require './order'

class OrderProcessor
  def process_order(order)
    @customer = order.customer
    @items = order.items

    raise('Không có mặt hàng nào!') if @items.empty?

    # Kiểm tra tồn kho
    check_quantity

    # Tạo hóa đơn
    invoice = create_invoice(get_price)

    # Gửi email xác nhận
    send_confirmation_email(invoice)
  end

  def get_price
    total_price = @items.reduce(0) { |acc, elem| acc + elem.price_each_quantity }
    total_price -= total_price * @customer.discount_percent if @customer.has_discount?
  end

  def check_quantity
    @items.each do |item|
      raise("Không đủ hàng trong kho cho #{item.name}") if item.not_available?
    end
  end

  private

  def create_invoice(total_price)
    # Tạo hóa đơn và lưu vào cơ sở dữ liệu
    # ...
  end

  def send_confirmation_email(invoice)
    # Gửi email xác nhận cho khách hàng
    # ...
  end
end
