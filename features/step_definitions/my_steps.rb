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
  @@generala.setDados [arg1, arg2, arg3, arg4, arg5]
  click_button("Tirar dados")
end



