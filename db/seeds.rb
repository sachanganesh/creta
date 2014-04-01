# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Gallery.delete_all

cogitatus = Gallery.create!(created_at: Time.now,
														id: 1,
														name: "Cogitatus",
														updated_at: Time.now)
politicus = Gallery.create!(created_at: Time.now,
														id: 2,
														name: "Politicus",
														updated_at: Time.now)
parcus = Gallery.create!(created_at: Time.now,
														id: 3,
														name: "Parcus",
														updated_at: Time.now)
ipsum = Gallery.create!(created_at: Time.now,
														id: 4,
														name: "Ipsum",
														updated_at: Time.now)
scientia_physica = Gallery.create!(created_at: Time.now,
														id: 1,
														name: "Scientia Physica",
														updated_at: Time.now)
scientia_naturalis = Gallery.create!(created_at: Time.now,
														id: 1,
														name: "Scientia Naturalis",
														updated_at: Time.now)
proelium = Gallery.create!(created_at: Time.now,
														id: 1,
														name: "Proelium",
														updated_at: Time.now)
humanitas = Gallery.create!(created_at: Time.now,
														id: 1,
														name: "Humanitas",
														updated_at: Time.now)
