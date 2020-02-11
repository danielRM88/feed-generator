class StripeAdapter
  def initialize(params)
    @params = params
  end

  def process_payment
    # TODO
    raise NotImplementedError
  end

private
  def sucess?
    raise NotImplementedError
  end
end