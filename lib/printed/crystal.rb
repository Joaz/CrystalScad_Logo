class Crystal < CrystalScad::Printed
	def initialize()
		@d1 = 0.1
		@d2= 10
		@cone_height = 10
		@middle_height = 2	
		@fn = 9
	end

	def part(show)
		res = cylinder(d1:@d1,d2:@d2,h:@cone_height ,fn:@fn)
		res += cylinder(d:@d2, h:@middle_height, fn:@fn).translate(z:@cone_height)
		res += cylinder(d1:@d2,d2:@d1,h:10,fn:@fn).translate(z:@cone_height+@middle_height)
		res
	end

end	
