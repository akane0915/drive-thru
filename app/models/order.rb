class Order < ActiveRecord::Base
  has_many :order_items
  before_create :update_status

  def finalize(order)
    self.status = "Closed"
    self.save

  end
  private

  def update_status
    if self.status == nil?
      self.status = "Open"
    end
  end

end
