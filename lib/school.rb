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
end
 
