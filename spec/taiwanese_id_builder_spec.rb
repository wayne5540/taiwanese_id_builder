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

    pending "case sensative"
  end

  describe "#generate" do

    it "always generate valid ID" do
      fake_ids = 1000.times.map do
        TaiwaneseIdBuilder.valid?(TaiwaneseIdBuilder.generate)
      end

      expect(fake_ids.all?{true}).to be true
    end

    describe "is able to fake male or female ID" do
      context "when generate female ID" do
        it "first number charactor should be 2" do
          fake_id = TaiwaneseIdBuilder.generate("female")
          first_number = fake_id.split(//)[1]

          expect(first_number).to eq("2")
        end
      end

      context "when generate male ID" do
        it "first number charactor should be 1" do
          fake_id = TaiwaneseIdBuilder.generate("male")
          first_number = fake_id.split(//)[1]

          expect(first_number).to eq("1")
        end
      end
    end
  end

end