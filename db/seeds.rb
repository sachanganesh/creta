# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Gallery.delete_all

cogitatus = Gallery.create!(id: 1,
														name: "Cogitatus")
politicus = Gallery.create!(id: 2,
														name: "Politicus")
parcus = Gallery.create!(id: 3,
												 name: "Parcus")
ipsum = Gallery.create!(id: 4,
												name: "Ipsum")
scientia_physica = Gallery.create!(id: 5,
																	 name: "Scientia Physica")
scientia_naturalis = Gallery.create!(id: 6,
																		 name: "Scientia Naturalis")
proelium = Gallery.create!(id: 7,
													 name: "Proelium",)
humanitas = Gallery.create!(id: 8,
														name: "Humanitas")
