require "spec_helper"

describe GoogleSearchCriterion::Search do
  describe ".results" do
    it "gets the results from www.google.com for a given keyphrase" do
      expect(described_class.results("ruby rocks")).to be > 0
    end

    context "when there are no results" do
      it "returns 0" do
        expect(described_class.
          results("4#@@@@3fefe09-this-should-provide-012121-αποτελέσματα")).to eq(0)
      end
    end

    context "when there are few results" do
      it "gets the result" do
        expect(described_class.
          results("αυτό είναι result ασκαρδαμικτι περσεφονη")).to be < 100
      end
    end

    it "transforms numbers correctly" do
      expect(described_class.results("κάτοικος")).to be > 1_000
    end
  end
end