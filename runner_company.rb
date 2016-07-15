require_relative "emailer"
require_relative "employee"
require_relative "manager"
require_relative "intern"

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee1.print_info
employee2.print_info

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])

intern = Intern.new(first_name: "Whatever", last_name: "Unimportant", salary: 0, active: true)

manager.print_info

intern.print_info

intern.send_report