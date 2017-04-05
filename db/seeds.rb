# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
dates = ['01/01/2017','02/02/2017','03/01/2017','04/01/2017']

dates.each do |date|
  IsmReport.create({:published_at => date})
end


indices = ['PMI','New Orders','Production','Employment','Supplier Deliveries','Inventories', "Customers' Inventories", 'Prices', 'Backlog of Orders', 'create Export Orders','Imports']

indices.each do |index|
  Index.create({:name => index})
end

# index_ratings = {
#   'PMI' => [52.8,52.3,49.4,51.7]
#   'Production' => [59.4,61.4,62.9,57.6],
#   'New Orders' => [60.3,60.4,65.1,64.5],
#   'Employment' => [52.8,56.1,54.2,58.9],
#   'Supplier Deliveries' => [53,53.6,54.8,55.9],
#   'Inventories' => [47.0,48.5,51.5,49.0],
#   "Customers' Inventories" => [49.0,48.5,47.5,47.0],
#   'Prices' => [65.5,69.0,68.0,70.5],
#   'Backlog of Orders' => [49.0,49.5,57.0,57.5],
#   'New Export Orders' => [56.0,54.5,55.0,59.0],
#   'Imports' => [50.5,50.0,54.0,53.5]
# }


    index_ratings = [52.8,
60.3,
59.4,
 52.8,
53,
47.0,
49.0,
65.5,
49.0,
56.0,
50.5,52.3,
60.4,
61.4,
56.1,
53.6,
48.5,
48.5,
69.0,
49.5,
54.5,
50.0,49.4,
65.1,
62.9,
54.2,
54.8,
51.5,
47.5,
68.0,
57.0,
55.0,
54.0,51.7,
64.5,
57.6,
58.9,
55.9,
49.0,
47.0,
70.5,
57.5,
59.0,
53.5]


indices = Index.all
ism_reports = IsmReport.all

ism_reports.each do |report|
  indices.each do |index|
  IndexReport.create({:ism_report_id => report.id, :index_id => index.id})
  end
end





industries = [
              'Wood Products', 'Printing & Related Support Activities', 'Electrical Equipment, Appliances & Components', 'Apparel, Leather & Allied Products', 'Paper Products', 'Plastics & Rubber Products', 'Primary Metals', 'Furniture & Related Products', 'Machinery', 'Nonmetallic Mineral Products', 'Transportation Equipment', 'Miscellaneous Manufacturing', 'Textile Mills', 'Chemical Products', 'Computer & Electronic Products', 'Fabricated Metal Products', 'Petroleum & Coal Products', 'Food, Beverage & Tobacco Products'
              ]
industries.each do |industry|
  Industry.create({:name => industry})
end

n = 0
until n == Industry.all.count do
  value_chains = ['Commodities','Manufacturers', 'Wholesalers', 'Retailers', 'Consumers']

  value_chains.each do |value_chain|
    ValueChain.create({:industry_id => n,:name => value_chain})
  end
  n += 1
end


until n == (index_ratings.count) do
  index_reports[n].update_attributes(:index_reading => index_ratings[n])
   n += 1
end




