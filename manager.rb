# Create a new file called manager.rb. Paste in the code: https://gist.github.com/peterxjang/628b90b89bd7f61f8cff9319a7f3d59d
# Create a method in the Manager class called give_all_raises that loops through each of the manager’s employees and gives them a raise (using the give_annual_raise method). Demonstrate how it works.
# Create a method in the Manager class called fire_all_employees that loops through each of the manager’s employees and changes their active status to false.
# Bonus: What happens when you define a method in the Employee and Manager class with the same name? Read more about method overriding here: https://medium.com/@mattrice12/method-overriding-and-super-f19cf7274c4. Then try to use super on a method other than initialize!

class Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :active

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

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee1.print_info
employee2.print_info

class Manager < Employee
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  index = 0
  def give_all_raises
    while index < 2
      employee[index].give_annual_raise
      index += 1
    end
  end

  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end
end

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_report