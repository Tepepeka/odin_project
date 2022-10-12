require_relative '../lib/hello'

describe "the hi function" do
    it "says hello" do
        expect(hello).to eq("hi")
    end
end