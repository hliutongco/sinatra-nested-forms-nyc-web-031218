class Ship
  attr_accessor :name, :type, :booty, :pirate
  ALL = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    @pirate = nil
    ALL << self
  end

  def self.clear
    ALL.clear
  end

  def self.all
    ALL
  end

end
