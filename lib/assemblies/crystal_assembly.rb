class CrystalAssembly < CrystalScad::Assembly

	def part(show)
		crystal = Crystal.new
		gear = PrintedGear.new(module:1.5,teeth:42,height:8,bore:8)
				
  	res = crystal.show
	  res += gear.translate(z:crystal.height).color("lightgrey")
	
		res
	end

  def description
    "CrystalSCAD Logo"
  end

end
