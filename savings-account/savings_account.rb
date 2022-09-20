module SavingsAccount
  def self.interest_rate(balance)
    if balance < 0
      return -3.213.to_f
    elsif balance < 1000
      return 0.5.to_f
    elsif balance < 5000
      return 1.621.to_f
    else 
      return 2.475.to_f
    end
  end

  def self.annual_balance_update(balance)
    interest = balance.abs * (interest_rate(balance) / 100)
    balance + interest 
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0

    until current_balance >= desired_balance
      years += 1
      current_balance = annual_balance_update(current_balance)
    end
    years
  end
end
