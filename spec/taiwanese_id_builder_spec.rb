require 'spec_helper'

describe TaiwaneseIdBuilder do

  describe "#valid?" do
    context "when id not valid" do
      it "returns false if id too short" do
        expect( TaiwaneseIdBuilder.valid?("E123") ).to be false
      end

      it "returns false if id too long" do
        expect( TaiwaneseIdBuilder.valid?("Y144713411000") ).to be false
      end

      it "returns false if id calculation is wrong" do
        expect( TaiwaneseIdBuilder.valid?("Y144713412") ).to be false
      end

      it "returns false if format is wrong" do
        expect( TaiwaneseIdBuilder.valid?("YAC4713412") ).to be false
      end
    end

    context "when id is valid" do
      let(:id) { "Y144713411" }

      it "returns true" do
        expect( TaiwaneseIdBuilder.valid?(id) ).to be true
      end
    end
  end

end