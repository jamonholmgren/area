class Integer

  def to_region(options = {})
    if self.to_s.length == 3 # an area code
      Area::AREA_CODES.each do |row|
        return row.last if row.first == self.to_s
      end
    else
      #  puts "not an area code"
    end
    nil
  end

  def to_latlon
    Area::ZIP_CODES.each do |row|
      return row[3] + ', ' + row[4] if row.first == self.to_s
    end
    nil
  end

  def to_lat
    Area::ZIP_CODES.each do |row|
      return row[3] if row.first == self.to_s
    end
    nil
  end

  def to_lon
    Area::ZIP_CODES.each do |row|
      return row[4] if row.first == self.to_s
    end
    nil
  end

  def to_gmt_offset
    Area::ZIP_CODES.each do |row|
      return row[5] if row.first == self.to_s
    end
    nil
  end

end
