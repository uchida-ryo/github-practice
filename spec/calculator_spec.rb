require "calculator"

RSpec.describe Calculator do
  it "adds two numbers" do
    calc = Calculator.new
    expect(calc.add(2, 3)).to eq(5)
  end
end
