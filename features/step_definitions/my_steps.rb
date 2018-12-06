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


