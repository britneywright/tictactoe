require "spec_helper"

describe Array do
  context "#all_empty?" do
    it "returns true if all elements of the Array are empty" do
      expect(["", "", ""].all_empty?).to eq true
    end

    it "returns false if some of the Array elements are not empty" do
      expect(["", "1", "", Object.new, :a].all_empty?).to eq false
    end

    it "returns true for an empty Array" do
      expect([].all_empty?).to eq true
    end
  end

  context "#all_same?" do
    it "returns true if all elements of the Array are the same" do
      expect(["A", "A", "A"].all_same?).to eq true
    end

    it "returns false if some of the Array elements are not the same" do
      expect(["", 1, "", Object.new, :a].all_same?).to eq false
    end

    it "returns true for an empty Array" do
      expect([].all_same?).to eq true
    end
  end

  context "#any_empty?" do
    it "returns true if any element of the Array is empty" do
      expect(["", 1, 2].any_empty?).to eq true
    end

    it "returns false if none of the elements of the Array are empty" do
      expect(["A", "B", "C"].any_empty?).to eq false
    end
  end

  context "#none_empty?" do
    it "returns true if any element of the Array is empty" do
      expect(["", 1, 2].none_empty?).to eq false
    end

    it "returns false if none of the elements of the Array are empty" do
      expect(["A", "B", "C"].none_empty?).to eq true
    end
  end  
end