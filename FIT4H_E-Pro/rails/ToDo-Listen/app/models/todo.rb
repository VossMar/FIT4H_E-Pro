class Todo < ActiveRecord::Base
	PRIORITAET = ["Sehr Wichtig!","Wichtig","Zweitrangig","Drittrangig"]
	validates :prio, inclusion: {in: PRIORITAET}
end
