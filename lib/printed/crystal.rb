class Crystal < CrystalScad::Printed

	def initialize()
		@d1 = 0.1
		@d2 = 100
		@d3 = 65
		@cone_height = 90
		@middle_height = 8	
		@top_height = 8 
		@fn = 9
		
		@height = @cone_height + @middle_height + @top_height
	end

	def part(show)
		res = cylinder(d1:@d1,d2:@d2,h:@cone_height,fn:@fn)
		res += cylinder(d:@d2, h:@middle_height,fn:@fn).translate(z:@cone_height)
		res += cylinder(d1:@d2,d2:@d3,h:@top_height,fn:@fn).translate(z:@cone_height+@middle_height)		

		if show
		  res = res.color(r:0,b:255,g:255,a:210)
		end

		res
	end

end	
