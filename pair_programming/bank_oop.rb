class Account

  attr_accessor :first_name, :last_name, :email
  attr_reader :account_number

  def initialize(first_name, last_name, email)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @account_number = create_account_number
  end

  def create_account_number
    rand.to_s[2..11]
  end

  def print_info
    puts "First Name: #{@first_name}"
    puts "Last Name: #{@last_name}"
    puts "Email: #{@email}"
    puts "Account Number: #{@account_number}"
  end

end

class AccountList

  def initialize
    @accounts = []
  end

  def add_account(account)
    @accounts << account
  end

  def print_all_accounts
    @accounts.each_with_index do |account, index|
      puts "Account: #{index + 1}"
      account.print_info
    end
  end

end

account_list = AccountList.new

bob = Account.new("Bob", "Ross", "bross@gmail.com")
account_list.add_account(bob)

sally = Account.new("Sally", "Foster", "sfoster@gmail.com")
account_list.add_account(sally)

account_list.print_all_accounts
