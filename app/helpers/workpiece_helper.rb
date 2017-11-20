module WorkpieceHelper
  def readable_picnum(picnum)
  	content_tag :span, style: "letter-spacing: 1.5px;" do
  		small_part = picnum[0..-6]
  		big_part = content_tag :span, style: "font-size: 130%;" do
  			picnum[-5..-1]
  		end
  		raw(small_part + big_part)
  	end
  end
end