class Backer
   

    attr_accessor :name 

    def initialize(name)
        @name = name
       
    end 

    

    def  back_project(title)
        ProjectBacker.new(title, self )
    
    end

    def backed_projects
        list = []
        ProjectBacker.all.each  do |pro| 
            if pro.backer == self 
                list << pro.project
            end
        end
        list
    end 



end 