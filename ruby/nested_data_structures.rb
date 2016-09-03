Platoon = {
	'squad_1' => {
		'fire_team_1' => {
			'Sommers' => ["Sergeant", "Fire Team Leader", "M4", 200],
			'Castro' => ["Automatic Gunner", "SAW", 1000],
			'Dixon'  => ["Rifelman", "m203", 100]
		},
		'fire_team_2' => {
			'Rodriguez' => ["Staff Sergeant", "Fire Team Leader", "M4", 200],
			'Swanson' => ["Automatic Gunner", "SAW", 1000],
			'Ortiz'  => ["Rifelman", "m203", 100]
		},
        'fire_team_3' => {
			'Jones' => ["Corporal", "Fire Team Leader", "M4", 200],
			'Ortega' => ["Automatic Gunner", "SAW", 1000],
			'Smith'  => ["Rifelman", "m203", 100]
		}
	},




	'squad_2' => {
		'fire_team_1' => {
			'Sarn' => ["Staff Sergeant", "Fire Team Leader", "M4", 200],
			'Ruiz' => ["Automatic Gunner", "SAW", 1000],
			'Pittman' => ["Rifelman", "m203", 100]
		},
		'fire_team_2' => {
			'Karnes' => ["Gunnery Sergeant","Fire Team Leader", "M4", 200],
			'Peterson' => ["Automatic Gunner", "SAW", 1000],
			'Mattis'  => ["Rifelman", "m203", 100]
		},
		'fire_team_3' => {
			'James' => ["Lance Corporal", "Fire Team Leader", "M4", 200],
			'Knapp' => ["Automatic Gunner", "SAW", 1000],
			'Helmer' => ["Rifelman", "m203", 100]
		}

	},
	'squad_3' => {
		'fire_team_1' => {
			'Nixon' => ["Private First Class", "Fire Team Leader", "M4", 200],
			'Berry' => ["Automatic Gunner", "SAW", 1000],
			'James' => ["Rifelman", "Mortar", 100]
		},
		'fire_team_2' => {
			'Brooks' => ["Sergeant" ,"Fire Team Leader", "M4", 200],
			'Newton' => ["Automatic Gunner", "SAW", 1000],
			'Neller'  => ["Rifelman", "LAW", 2]
		},
		'fire_team_3' => {
			'Drouilard' => [ "Private First Class", "Fire Team Leader", "M4", 200],
			'Barnes' => ["Automatic Gunner", "M240 B", 1000],
			'Puller' => ["Rifelman", "m203", 100]
		}

	}
}
#First Squad
puts "FIRST SQUAD FIRE TEAM LEADERS :"
print "SOMMERS! FIRST SQUAD! FIRST FIRE TEAM REPORTING AS ORDERED!" 
	print Platoon['squad_1']['fire_team_1']['Sommers']
puts 	
print "RODRIGUEZ! FIRST SQUAD! SECOND FIRE TEAM REPORTING AS ORDERED!" 
	print Platoon['squad_1']['fire_team_2']['Rodriguez']
puts 	
print "JONES! FIRST SQUAD! THIRD FIRE TEAM REPORTING AS ORDERED!" 
	print Platoon['squad_1']['fire_team_3']['Jones']

#Second Squad
puts "SECOND SQUAD FIRE TEAM LEADERS :"
print "SARN! SECOND SQUAD! FIRST FIRE TEAM REPORTING AS ORDERED!" 
	print Platoon['squad_2']['fire_team_1']['Sarn']
puts 	
print "KARNES! SECOND SQUAD! FIRST FIRE TEAM REPORTING AS ORDERED!"
	print Platoon['squad_2']['fire_team_2']['Karnes']
puts 	
print "JAMES! SECOND SQUAD! THIRD FIRE TEAM REPORTING AS ORDERED!" 
	print Platoon['squad_2']['fire_team_3']['James']

#Third Squad
puts "THIRD SQUAD FIRE TEAM LEADERS :"
print "NIXON! THIRD SQUAD! FIRST FIRE TEAM REPORTING AS ORDERED!" 
	print Platoon['squad_3']['fire_team_1']['Nixon']
puts 	
print "BROOKS! THIRD SQUAD! SECOND FIRE TEAM REPORTING AS ORDERED!" 
	print Platoon['squad_3']['fire_team_2']['Brooks']
puts 	
print "DROUILARD! THIRD SQUAD! THIRD FIRE TEAM REPORTING AS ORDERED!" 
	print Platoon['squad_3']['fire_team_3']['Drouilard']		