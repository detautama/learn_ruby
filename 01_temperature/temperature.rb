def ftoc(ftemp)
	temp = (ftemp.to_f - 32.0) * (5.0 / 9.0)
	temp
end

def ctof(ctemp)
	temp = ctemp.to_f * (9.0/5.0) + 32
	temp
end
