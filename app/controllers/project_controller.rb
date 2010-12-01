class ProjectController < ApplicationController
  def home
  end

  def instructions
  end

  def iterations
  end

  def stories
  end

  def requirements
  end

  def about
  end

  def reset
    deleteAllRecords
    insertIterations
    insertStories
    insertRequirements
  end

  def deleteAllRecords
    ActiveRecord::Base.connection.execute('delete from requirements;')
    ActiveRecord::Base.connection.execute('delete from iterations;')
    ActiveRecord::Base.connection.execute('delete from stories;')
    ActiveRecord::Base.connection.execute('delete from sqlite_sequence;')
  end

  def insertIterations
    ActiveRecord::Base.connection.execute('INSERT INTO iterations VALUES ("0","Story Pile",DATETIME(\' NOW \'),DATETIME(\' NOW \'));')
    ActiveRecord::Base.connection.execute('INSERT INTO iterations VALUES ("1","1",DATETIME(\'NOW\'),DATETIME(\'NOW\'));')
    ActiveRecord::Base.connection.execute('INSERT INTO iterations VALUES ("2","2",DATETIME(\' NOW \'),DATETIME(\' NOW \'));')
    ActiveRecord::Base.connection.execute('INSERT INTO iterations VALUES ("3","3",DATETIME(\' NOW \'),DATETIME(\' NOW \'));')
    ActiveRecord::Base.connection.execute('INSERT INTO iterations VALUES ("4","4",DATETIME(\' NOW \'),DATETIME(\' NOW \'));')
    ActiveRecord::Base.connection.execute('INSERT INTO iterations VALUES ("5","5",DATETIME(\' NOW \'),DATETIME(\' NOW \'));')
    ActiveRecord::Base.connection.execute('INSERT INTO iterations VALUES ("6","6",DATETIME(\' NOW \'),DATETIME(\' NOW \'));')
    ActiveRecord::Base.connection.execute('INSERT INTO iterations VALUES ("7","7",DATETIME(\' NOW \'),DATETIME(\' NOW \'));')
  end

  def insertStories
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("1","Air generator","As a scientist, I want to have an air generator, so that I can breathe when our oxygen ends.","5","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","H");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("2","Basic accommodation unit","As a scientist, I want basic accomodation units, so that I can rest decently when Phobos and Deimos are out in the Marsian night sky.","2","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("3","Basic bathing facility","As a scientist, I want basic bathing facilities, so that I can clean myself properly.","3","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","L");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("4","Cinema and movie studio","As a scientist, I want a cinema and a movie studio, so that I can watch and make movies.","13","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("5","Clothing factory","As a scientist, I want to have a clothing factory, so that I can be up to date with Earths fashion. ","3","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","L");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("6","Communication unit","As a scientist, I want To have communication units, so that I can keep in touch with my family.","3","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","H");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("7","Food processing unit","As a scientist, I want a food processing unit, so that I can transform pills into food.","5","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","H");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("8","Generator (solar)","As a scientist, I want a power generator, so that I can have electricity in the station.","8","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","H");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("9","Hospital","As a scientist, I want a basic hospital, so that I can keep healthy and get medicines when I need them.","5","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("10","Hydroponic plant unit","As a scientist, I want a hydroponic plan unit , so that I can have fresh vegetables.","5","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","L");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("11","Iphone network","As a scientist, I want to have a stable iPhone network, so that I can have a good reception for my gadget.","2","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","L");')
    ActiveRecord::Base.connection.execute('INSERT INTO stories VALUES ("12","Karaoke machine","As a scientist, I want a karaoke machine, so that I can have fun at nights.","1","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","H");')
    ActiveRecord::Base.connection.execute('INSERT INTO stories VALUES ("13","Laundry unit","As a scientist, I want a laundry unit, so that I can keep my underwear clean.","3","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","L");')
    ActiveRecord::Base.connection.execute('INSERT INTO stories VALUES ("14","Luxury accommodation","As a scientist, I want luxury accommodations, so that I can live very comfortably while doing my job.","13","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","L");')
    ActiveRecord::Base.connection.execute('INSERT INTO stories VALUES ("15","Luxury baths","As a scientist, I want luxury baths, so that I can have more relaxing times.","8","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");')
    ActiveRecord::Base.connection.execute('INSERT INTO stories VALUES ("16","Mars Lander hydraulics","As a scientist, I want the Mars Lander hydraulics working, so that I can make the ship land smoothly.","1","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");')
    ActiveRecord::Base.connection.execute('INSERT INTO stories VALUES ("17","Mars Lander docking station","As a scientist, I want The Mars Lander docking station repaired, so that I can make the ship lift off smoothly.","1","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");')
    ActiveRecord::Base.connection.execute('INSERT INTO stories VALUES ("18","Mars Lander furnishings","As a scientist, I want the Mars Lander furnishings complete, so that I can accommodate the crew and pilots well.","3","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");')    
    ActiveRecord::Base.connection.execute('INSERT INTO stories VALUES ("19","Mars Lander communications","As a scientist, I want the Mars Lander communications devices repaired, so that I can keep in touch with Houston.","5","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");')
    ActiveRecord::Base.connection.execute('INSERT INTO stories VALUES ("20","Mars Lander central computer","As a scientist, I want the Mars Lander central computer fixed, so that I can have full information on the journey\'s status.","2","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");')
    ActiveRecord::Base.connection.execute('INSERT INTO stories VALUES ("21","Mars Lander controls","As a scientist, I want the Mars Lander controls fixed, so that I can control every part of the ship.","13","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");')
    ActiveRecord::Base.connection.execute('INSERT INTO stories VALUES ("22","Mars Lander hull structure","As a scientist, I want the Mars Lander hull structure repaired, so that I can assemble all parts of the ship together.","8","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");')
    ActiveRecord::Base.connection.execute('INSERT INTO stories VALUES ("23","Mars Lander engines","As a scientist, I want the Mars Lander engines fixed, so that I can make the ship lift off and move towards Earth.","2","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");')
    ActiveRecord::Base.connection.execute('INSERT INTO stories VALUES ("24","Mars Lander navigation","As a scientist, I want the Mars Lander navigation system set, so that I can navigate properly towards Earth.","5","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");')
    ActiveRecord::Base.connection.execute('INSERT INTO stories VALUES ("25","Mars Lander power plant","As a scientist, I want the Mars Lander power plant repaired, so that I can guarantee that we\'ll have enough power to reach Earth.","3","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");')
    ActiveRecord::Base.connection.execute('INSERT INTO stories VALUES ("26","Mars Lander atmosphere","As a scientist, I want the Mars Lander atmosphere devices completed, so that I can keep breathing and feeling well inside the ship.","1","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");')
    ActiveRecord::Base.connection.execute('INSERT INTO stories VALUES ("27","Mars Lander atmosphere","As a scientist, I want the Mars Lander final tests ran, so that I can assure that the ship is ready to go.","3","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");')
    ActiveRecord::Base.connection.execute('INSERT INTO stories VALUES ("28","Robot chef","As a scientist, I want to have a robot chef, so that I can focus on my work while it cooks.","3","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","L");')
    ActiveRecord::Base.connection.execute('INSERT INTO stories VALUES ("29","Robot maid","As a scientist, I want to have a robot maid, so that I can focus on my work while it cleans things up.","2","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");')
    ActiveRecord::Base.connection.execute('INSERT INTO stories VALUES ("30","Robot TV crew","As a scientist, I want to have a robot TV crew, so that I can document our mission on video and make money when back in Earth.","5","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","L");')
    ActiveRecord::Base.connection.execute('INSERT INTO stories VALUES ("31","Science unit (Mars life project)","As a scientist, I want to have a science unit completed, so that I can search for life in Mars during our stay.","5 ","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","L");')
    ActiveRecord::Base.connection.execute('INSERT INTO stories VALUES ("32","Sheltered park","As a scientist, I want to have a sheltered park, so that I can take a rest outside of the station without my suit.","5","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");')
    ActiveRecord::Base.connection.execute('INSERT INTO stories VALUES ("33","Sports centre","As a scientist, I want a sports centre, so that I can exercise on my time off.","5","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","L");')
    ActiveRecord::Base.connection.execute('INSERT INTO stories VALUES ("34","Water production plant","As a scientist, I want a water production plant, so that I can have water after it is all over.","5","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","H");')
  end

  def insertRequirements
    ActiveRecord::Base.connection.execute('INSERT INTO requirements VALUES ("1","2","1","Our oxygen won\'t last much. We need an air generator by iteration 2.",DATETIME(\'NOW\'),DATETIME(\'NOW\'));')
    ActiveRecord::Base.connection.execute('INSERT INTO requirements VALUES ("2","3","6","Three iterations is all we can stand without communication with our families.",DATETIME(\'NOW\'),DATETIME(\'NOW\'));')
    ActiveRecord::Base.connection.execute('INSERT INTO requirements VALUES ("3","3","8","Our power resources won\'t last longer than 3 iterations. We need a power generator!",DATETIME(\'NOW\'),DATETIME(\'NOW\'));')
    ActiveRecord::Base.connection.execute('INSERT INTO requirements VALUES ("4","5","34","We need a water plant by iteration 5 or we won\'t have any water to drink.",DATETIME(\'NOW\'),DATETIME(\'NOW\'));')
    ActiveRecord::Base.connection.execute('INSERT INTO requirements VALUES ("5","5","12","We love to sing. By iteration 5 we want to be able to have fun with a karaoke machine.",DATETIME(\'NOW\'),DATETIME(\'NOW\'));')
 end

end
