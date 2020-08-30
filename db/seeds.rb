# Wine.create!([
#   {varietal: "Petite Syrah", region: "Paso Robles", vintage: 2015, tasting_notes: "spicy with cinnamon and cherries, high acidity, bold, sticky tannin", pairings: "raspberry sorbet, pizza, spicy tacos", vintner: "Devil's Advocate"}
# ])

tags = [3, 5, 8]
wines = []
tags.each do |tag|
  tag = Tag.id.wines
  wines << tag
end
p wines

Tag.first.wines