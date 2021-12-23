pragma solidity >= 0.8.11;

contract retailer2 {
    int256 bal;

    struct Product {
        address prodAdd;
        string prodName;
        uint256 prodQuantity;
    }

    mapping(address => Product) public products;
    uint256 public prodCounter;

    function buy_product(string memory prodName, uint256 prodQuantity) public {
        products[msg.sender] = Product(msg.sender, prodName, prodQuantity);
        prodCounter++;
    }

    constructor() public {
        bal = 1000000;
    }

    function getBalance() public view returns (int256) {
        return bal;
    }

    function pay(int256 amt) public payable {
        bal = bal - amt;
    }
}
