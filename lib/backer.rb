require 'pry'
class Backer
    attr_reader :name

    def initialize (name)
        @name = name
      
    end

    def back_project(project)
        ProjectBacker.new(project, self)
       
    end

    def backed_projects
        backed_projs = ProjectBacker.all.select do |pb|
            pb.backer == self
        end
        #binding.pry
        

        backed_projs.map do |p|
            p.project
        end
        #binding.pry
    end


end

