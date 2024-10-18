import Text "mo:base/Text";
import Nat "mo:base/Nat";
import Int "mo:base/Int";

actor NumberConverter {

 


    // Converts regular numbers to binary numbers
    public func toBinaryDigits(n: Int) : async Text {
        return convertToBinaryInt(n);
    };


  

    // Converts a Natural number to hexadecimal digits
    public func toHex(number: Nat) : async Text {
        let hexChars = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'];
        var result : Text = "";
        var n = number;
        
        if (n == 0) {
            return "0";  // Special case for 0
        };

        while (n > 0) {
            let remainder = n % 16;
            result := Text.fromChar(hexChars[remainder]) # result;  // Gets the corresponding hex digit ready
            n := n / 16;  // Divide the number by 16
        };

        return result;
    };

    // This function converts a regular number to binary 
    func convertToBinaryInt(n: Int) : Text {
        var binaryStr = "";
        var number = n;
        if (number == 0) {
            return "0";
        };
        while (number != 0) {
            let remainder = number % 2;
            binaryStr := Text.concat(Int.toText(remainder), binaryStr);
            number := number / 2;
        };
        return binaryStr;
    };
}
