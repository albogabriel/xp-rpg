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
   ActiveRecord::Base.connection.execute('INSERT INTO "stories" VALUES ("40","TESTE INSERTION","As a NASA scientist I would like to have a food processing unit so I can produce food out of small protein pills.","3","Ready for Dev","2010-10-11 20:10:13.452822","2010-11-22 04:50:04.501580","1","M");')
  end

end
