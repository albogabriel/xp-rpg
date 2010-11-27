class ProjectController < ApplicationController
  def home
  end

  def cardwall
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
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("19","Mars Lander communications","As a scientist, I want the Mars Lander communications devices repaired, so that I can keep in touch with Houston.","5","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("20","Mars Lander central computer","As a scientist, I want the Mars Lander central computer fixed, so that I can have full information on the journey\'s status.","2","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("21","Mars Lander controls","As a scientist, I want the Mars Lander controls fixed, so that I can control every part of the ship.","13","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("22","Mars Lander hull structure","As a scientist, I want the Mars Lander hull structure repaired, so that I can assemble all parts of the ship together.","8","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("23","Mars Lander engines","As a scientist, I want the Mars Lander engines fixed, so that I can make the ship lift off and move towards Earth.","2","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("24","Mars Lander navigation","As a scientist, I want the Mars Lander navigation system set, so that I can navigate properly towards Earth.","5","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("25","Mars Lander power plant","As a scientist, I want the Mars Lander power plant repaired, so that I can guarantee that we\'ll have enough power to reach Earth.","3","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("26","Mars Lander atmosphere","As a scientist, I want the Mars Lander atmosphere devices completed, so that I can keep breathing and feeling well inside the ship.","1","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("27","Mars Lander atmosphere","As a scientist, I want the Mars Lander final tests ran, so that I can assure that the ship is ready to go.","3","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("28","Robot chef","As a scientist, I want to have a robot chef, so that I can focus on my work while it cooks.","3","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","L");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("29","Robot maid","As a scientist, I want to have a robot maid, so that I can focus on my work while it cleans things up.","2","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("30","Robot TV crew","As a scientist, I want to have a robot TV crew, so that I can document our mission on video and make money when back in Earth.","5","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","L");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("31","Science unit (Mars life project)","As a scientist, I want to have a science unit completed, so that I can search for life in Mars during our stay.","5 ","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","L");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("32","Sheltered park","As a scientist, I want to have a sheltered park, so that I can take a rest outside of the station without my suit.","5","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","M");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("33","Sports centre","As a scientist, I want a sports centre, so that I can exercise on my time off.","5","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","L");	')
    ActiveRecord::Base.connection.execute('	INSERT INTO stories VALUES ("34","Water production plant","As a scientist, I want a water production plant, so that I can have water after it is all over.","5","Ready for Dev",DATETIME(\'NOW\'),DATETIME(\'NOW\'),"0","H");	')
  end

  def insertRequirements
    ActiveRecord::Base.connection.execute('	INSERT INTO requirements VALUES ("1","2","1","Our oxygen won\'t last much. We need an air generator by iteration 2.",DATETIME(\'NOW\'),DATETIME(\'NOW\'));')
    ActiveRecord::Base.connection.execute('	INSERT INTO requirements VALUES ("2","3","6","Three iterations is all we can stand without communication with our families.",DATETIME(\'NOW\'),DATETIME(\'NOW\'));')
    ActiveRecord::Base.connection.execute('	INSERT INTO requirements VALUES ("3","3","8","Our power resources won\'t last longer than 3 iterations. We need a power generator!",DATETIME(\'NOW\'),DATETIME(\'NOW\'));')
    ActiveRecord::Base.connection.execute('	INSERT INTO requirements VALUES ("4","5","34","We need a water plant by iteration 5 or we won\'t have any water to drink.",DATETIME(\'NOW\'),DATETIME(\'NOW\'));')
    ActiveRecord::Base.connection.execute('	INSERT INTO requirements VALUES ("5","5","12","We love to sing. By iteration 5 we want to be able to have fun with a karaoke machine.",DATETIME(\'NOW\'),DATETIME(\'NOW\'));')
 end

end
