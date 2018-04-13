class CalculateGrossRevenueService
  def self.call
    Purchase.all.inject(0){ |sum, purchase| sum + purchase.quantity * purchase.item.price }
  end
end
