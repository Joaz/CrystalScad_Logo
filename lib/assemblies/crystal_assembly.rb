class CrystalAssembly < CrystalScad::Assembly

	def part(show)
		res = Crystal.new.show.color(r:0	,b:255,g:255, a:100)
	
		res
	end

end
