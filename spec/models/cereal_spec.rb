 describe Cereal do
  it "is valid with a name, category and quantity" do
    cereal = Cereal.new(
      name: "Coco Puffs",
      category: "kids", 
      quantity: "14")
    expect(cereal).to be_valid
  end

  it "is invalid without a name" do
    cereal = Cereal.new(name: nil)
    cereal.valid?
    expect(cereal.errors[:name]).not_to include("can't be blank")
  end
    
  end