class Manager < Employee

  include Emailer

  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def give_annual_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end
  end

end