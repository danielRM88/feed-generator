class PaymentFactory
  def initialize(adapter)
    @adapter = adapter
  end

  def process_payment
    @adapter.process_payment
  end
end