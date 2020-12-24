require 'pry'
class Project
    attr_reader :title


    def initialize (title)
        @title = title
    
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
       #binding.pry
    end


    def backers
        projects = ProjectBacker.all.select do |pb|
          pb.project == self
        end
        projects.map do |project|
          project.backer
        end
      end

end



