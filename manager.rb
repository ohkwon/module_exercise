
class Employee
  attr_reader :first_name, :last_name
  attr_accessor :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

module Emailer
  def send_report
    puts "Send Report"
  end
end

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

class Intern < Employee

  include Emailer

  def not_get_paid
    puts ":("
  end

end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee1.print_info
employee2.print_info

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])

intern = Intern.new(first_name: "Whatever", last_name: "Unimportant", salary: 0, active: true)

manager.print_info
manager.send_report

puts employee1.print_info
puts employee2.print_info

manager.give_annual_raises

puts employee1.print_info
puts employee2.print_info

puts employee1.active
puts employee2.active

manager.fire_all_employees

puts employee1.active
puts employee2.active

manager.send_report
intern.send_report