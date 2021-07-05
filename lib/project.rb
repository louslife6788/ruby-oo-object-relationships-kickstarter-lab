class Project 
    @@all = []

    attr_accessor :title

    def initialize(title)
        @title = title
        @@all << self 

    end
     

    def self.all 
        @@all
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def backers
        list = []
        ProjectBacker.all.each do |pro|
           if pro.project == self 
             list << pro.backer 
           end 
        end
        list
    end
    




end 

