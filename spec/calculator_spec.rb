require "calculator"

RSpec.describe Calculator do
  it "adds two numbers" do
    calc = Calculator.new
    expect(calc.add(2, 3)).to eq(5)
  end

  it "subs two numbers" do
    calc = Calculator.new
    expect(calc.sub(2, 3)).to eq(-1)
  end
end
