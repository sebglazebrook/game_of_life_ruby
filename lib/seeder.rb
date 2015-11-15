class Seeder

  def self.seed(cells)
    number_to_make_alive = rand(1..cells.size)
    cells.shuffle.each_with_index do |cell, index|
      break if index >= (number_to_make_alive - 1)
      cell.live!
    end
    cells
  end

end
