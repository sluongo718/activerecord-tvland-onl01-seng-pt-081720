class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name

        f_name = self.first_name
        l_name = self.last_name
        name = "#{f_name} #{l_name}"
        name

    end

    def list_roles

        self.characters.map do |t|
            role = "#{t.name} - #{t.show.name}"
        end

    end
  
end