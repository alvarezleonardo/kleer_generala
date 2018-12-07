Given(/^llego al inicio$/) do
  visit '/'
end

Then(/^debo ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Then(/^debo ver Lista de dados$/) do
  last_response.body.should =~ /<li>/m
end

When(/^jugador tira dados$/) do
  click_button("Tirar dados")
end

When(/^Tira dados y sale (\d+) (\d+) (\d+) (\d+) (\d+)$/) do |arg1, arg2, arg3, arg4, arg5|
  @@generala.setDados [arg1.to_i, arg2.to_i, arg3.to_i, arg4.to_i, arg5.to_i]
  click_button("Tirar dados")
end

Then(/^debo ver suma puntos en poker$/) do
  text = "<td>Poker</td><td>45</td>"
  last_response.body.should =~ /#{text}/m
end
