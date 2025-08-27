class HundredDoors
  def round(n)
    doors = Array.new(100, false)

    (1..n).each do |round|
      (round..100).step(round) do |door|
        doors[door - 1] = !doors[door - 1]
      end
    end

    doors.each_index.select { |i| doors[i] }.map { |i| i + 1 }
  end
end
