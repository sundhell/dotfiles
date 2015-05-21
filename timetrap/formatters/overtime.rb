class Timetrap::Formatters::Overtime
  def initialize(entries)
    @entries = entries
  end

  def output
    total = []
    31.times do |i|
      i = i+1
      start_of_day = Time.parse("2015-03-#{i} 00:00:00 +0100")
      end_of_day = Time.parse("2015-03-#{i} 23:59:59 +0100")

      todays_entries = @entries.select do |entry|
        entry_start_time = entry.values.fetch(:start)
        entry_end_time = entry.values.fetch(:end)

        next unless entry_start_time && entry_end_time
        true if entry_start_time > start_of_day && entry_end_time < end_of_day
      end
      sum = todays_entries.map{ |entry| (entry.values.fetch(:end) - entry.values.fetch(:start)) }.inject(&:+)

      if sum
        puts '---------------'
        puts start_of_day.strftime('%a %b %d')
        work_day_start = todays_entries.first.values.fetch(:start).strftime("%H:%M:%S")
        work_day_end = todays_entries.last.values.fetch(:end).strftime("%H:%M:%S")
        puts "Working hours: #{work_day_start} - #{work_day_end}"

        unless start_of_day.saturday? || start_of_day.sunday?
          sum = sum - (8 * 3600)
        end

        total << sum
        puts "Overtime: #{Time.at(sum).utc.strftime("%H:%M:%S")}"
      end
    end

    total_time = total.inject(&:+)
    seconds = total_time % 60
    minutes = (total_time / 60) % 60
    hours = total_time / (60 * 60)
    puts '======================'
    puts ''
    puts "Total: #{format("%02d:%02d:%02d", hours, minutes, seconds)}"
  end
end
