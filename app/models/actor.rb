class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.class.find(self.id).first_name} #{self.class.find(self.id).last_name}"
  end

  def list_roles
    self.characters.collect do | character|
      "#{character.name} - #{character.show.name}"
    end
  end
end
