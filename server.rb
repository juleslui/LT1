require 'sinatra'
require './expense.rb'

expenses = []

get '/'  do
	@expenses = expenses
	erb :index
end

get '/new' do
	erb :new
end

post '/save' do
	last_expense = expenses.last
	@id = last_expense + 1
	expense = Expense.new(@id, item, amount)
	expenses << expense
	redirect to '/'
end

get '/show/:id' do
	@id = params[:id]
	@item = find(@id)
	erb :show
end