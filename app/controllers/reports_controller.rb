class ReportsController < ApplicationController

  def index
    @iterations = Iteration.all
    @stories = Story.all
    @requirements = Requirement.all
  end

  def businessValueReport
    @numberOfIterations = @iterations.size
    @iterations.each do |iteration|
      while iteration.id < @numberOfIterations/2
        @highValueStories = 0
        @mediumValueStories = 0
        @lowValueStories = 0
        @stories.each do |story|
          if iteration.id = story.iteration_id
            if @story.businessValue == 'H'
              @highValueStories = @highValueStories +1
              elsif @story.businessValue = 'M'
                @mediumValueStories = @mediumValueStories+1
              elsif @story.businessValue = 'L'
                @lowValueStories = @lowValueStories+1
            end
            puts @highValueStories
            puts @mediumValueStories
            puts @lowValueStories
          end
        end
      end
    end
  end

  def requirementsReport
    @iterations = Iteration.all
    @stories = Story.all
    @requirements = Requirement.all

    @requirementsMet = Array.new
    @requirementsNotMet = Array.new
    @requirementsArray = Array.new

    @requirements.each do |requirement|
      @stories.each do |story|
        if requirement.story.id == story.id
          if (requirement.iteration.id >= story.iteration_id && story.iteration_id != 0)
            @requirementsMet << "Story: "+story.id.to_s + " - "+story.title + " - Expected for iteration #" + requirement.iteration.id.to_s+" - Planned for iteration#"+ story.iteration_id.to_s+".";
            else @requirementsNotMet << "Story: "+ story.id.to_s + " - "+story.title  + " - Expected for iteration #" +  requirement.iteration.id.to_s+(story.iteration_id != 0 ?" - Planned for iteration#"+ story.iteration_id.to_s+".": " - Not planned for any iteration." );
          end
         end
      end
    end
    @requirementsArray << @requirementsMet
    @requirementsArray << @requirementsNotMet
    return @requirementsArray
  end

  def mainGoalReport
  end

  def defectsReport
  end
end
