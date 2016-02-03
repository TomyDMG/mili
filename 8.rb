# такое понятие как сумма частичного погашения не фигуриует в постановке задачи!
# предполагаю что имеется ввиду сумма переплаты
def calc(sum, _interest, period, numper_of_payments)
  return 'bad input' unless period % numper_of_payments == 0
  interest_per_iteration = period / numper_of_payments
  loan = sum
  percintage = 0
  numper_of_payments.times do
    percintage += (loan * interest_per_iteration / 100).round
    loan -= sum / numper_of_payments
  end
  [sum + percintage, percintage]
end

puts calc 10_000, 1, 10, 2
