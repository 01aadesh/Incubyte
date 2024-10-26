RSpec.describe StringCalculator type: :add do

describe "String Calculator" do
    context "add numbers" do
        it "with empty string" do
            sum = add("")
            expect(sum).to be 0
        end
        
        it "with valid integer inside the string" do
            sum = add("1")
            expect(sum).to be 1
        end
        
        
        it "with valid integer inside the string" do
            sum = add("1")
            expect(sum).to be 1
        end
        
        it "with negative number inside the string" do
            sum = add("1\n-2,-3")
            expect(sum).eql to("negative numbers not allowed -2,-3")
        end
        
        it "with delimeter inside the string" do
            sum = add("//;\n1;2")
            expect(sum).to be 3
        end 
        
        it "with nil values inside the string" do
            sum = add("nilnil")
            expect(sum).to be 0
        end 
        
    end    
end
end
