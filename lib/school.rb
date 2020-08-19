class School
  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(name)
    @student_names << name
  end

  def end_time
    time = start_time.split(':')
    hour = time[0].to_i
    hour += hours_in_school_day

    if hour >= 24
      hour -=24
    end

    "#{hour}:00"
  end

  def is_full_time?
    return true if hours_in_school_day > 4
    false
  end

  def standard_student_names
    standard_names = []

    student_names.each do |name|
      standard_names << name.capitalize
    end

    standard_names
  end

  def convert_end_time_to_clock_time
    time = end_time.split(":")
    hour = time[0].to_i

    if hour == 0
      hour = 12
    elsif hour > 12
      hour -= 12
    else
    end

    "#{hour}:00"
  end
end
