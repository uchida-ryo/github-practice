require "hundred_doors"

RSpec.describe HundredDoors do
  it "1回目のラウンドでは全てのドアが開く" do
    hundred_doors = HundredDoors.new
    expect(hundred_doors.round(1)).to eq((1..100).to_a)
  end

  it "2回目のラウンドでは偶数番のドアが閉じる" do
    hundred_doors = HundredDoors.new
    expect(hundred_doors.round(2)).to eq((1..100).step(2).to_a)
  end

  it "3回目のラウンドでは3の倍数のドアを切り替える" do
    hundred_doors = HundredDoors.new
    expect(hundred_doors.round(3)).to eq(
      (1..100).to_a.select do |n|
        # 1回目: 全て開く
        # 2回目: 偶数は閉じる
        # 3回目: 3の倍数を切り替え
        open = n.odd?
        open = !open if n % 3 == 0
        open
      end
    )
  end

  it "100回すべてのラウンドが終わると平方数のドアだけが開いている" do
    hundred_doors = HundredDoors.new
    expect(hundred_doors.round(100)).to eq(
      (1..10).map { |n| n * n } # => [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
    )
  end
end
