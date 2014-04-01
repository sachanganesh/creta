module GalleriesHelper
	protected
		def determine_id(text)
			case (text)
				when "cogitatus"							then return 1		# Thoughts
				when "politicus"							then return 2		# Politics
				when "parcus"									then return 3		# Economics
				when "ipsum"									then return 4		# Computers
				when "scientia_physica"				then return 5		# Physical sciences
				when "scientia_naturalis"			then return 6		# Natural sciences
				when "proelium"								then return 7		# Conflicts
				when "humanitas"							then return 8		# Humanities (Culture)
			end
		end
end
