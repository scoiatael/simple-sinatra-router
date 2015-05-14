module Controller
  def foo(x)
    { value: x }.to_json
  end

  def index
    foo('index')
  end

  def some_route
    foo('some_route')
  end
end
