require './customer'
require './item'
require './order'

class OrderProcessor
  def process_order(order)
    @customer = order.customer
    @items = order.items

    raise "Không có mặt hàng nào!" if @items.empty?
    
    # Kiểm tra tồn kho
    check_quantity

    # Tạo hóa đơn
    invoice = create_invoice(get_price - add_discount)

    # Gửi email xác nhận
    send_confirmation_email(invoice)
  end
  
  def get_price              
    total_price = 0
    @items.each do |item|
      total_price += item.price * item.quantity
    end
  end

  def add_discount
    return total_price * @customer.discount_percent if @customer.has_discount?
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
