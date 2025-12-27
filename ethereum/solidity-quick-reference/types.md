# Data Types

## Value Types
- `bool`: `true` or `false`.
- `int`: signed integers -- positive or negative while numbers
  - `int` alias for `int256`
  - `int8`..`int256`
- `uint`: unsigned integers -- positive whole numbers
  - `uint` alias for `uint256`
  - `uint8`..`uint256`
- `address`: holds Ethereum addresses
- `bytes<NUMBER>`: for raw byte sequences; fixed-size byte arrays
  - `bytes1`..`bytes32`
- `enum`: for custom enumerated types; user-defined value type of fixed length


## Reference/Complex Types
- `string`: dynamically-sized UTF-8 encoded string
- `array`: ordered collection of elements
- `struct`: custom data types/structures that group related variables
- `mapping`: key-value store for efficient data retrieval
- `bytes`: dynamically-sized byte arrays

## Arrays
- Fixed-size arrays: `TYPE[SIZE]`
- Dynamic-size arrays: `TYPE[]`

```solidity
pragma solidity ^0.8.0;

contract ArrayExamples {
    uint[] public arr;            // dynamic storage array
    uint[3] public fixedArr;      // fixed-size array
    struct Person { string name; uint age; }
    Person[] public people;       // dynamic array of structs

    // add to dynamic storage array
    function pushToDynamic(uint x) external {
        arr.push(x); // append
    }

    // remove last element
    function popFromDynamic() external {
        require(arr.length > 0, "empty");
        arr.pop();
    }

    // set a fixed-size array element by index
    function setFixed(uint index, uint value) external {
        require(index < fixedArr.length, "out of bounds");
        fixedArr[index] = value;
    }

    // add a struct using literals
    function addPerson(string calldata name, uint age) external {
        people.push(Person(name, age));
    }

    // add an empty struct slot then modify via storage pointer
    function addEmptyPersonAndModify(string calldata name, uint age) external {
        people.push(); // creates a new default Person in storage
        Person storage p = people[people.length - 1];
        p.name = name;
        p.age = age;
    }

    // remove element by replacing with last and popping (O(1), order not preserved)
    function removeByIndexReplace(uint index) external {
        require(index < arr.length, "out of bounds");
        arr[index] = arr[arr.length - 1];
        arr.pop();
    }

    // remove element by shifting (O(n), preserves order)
    function removeByIndexShift(uint index) external {
        require(index < arr.length, "out of bounds");
        for (uint i = index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1];
        }
        arr.pop();
    }

    // create and return a memory array (cannot push to memory arrays)
    function createMemoryArray(uint n) public pure returns (uint[] memory) {
        uint[] memory tmp = new uint[](n);
        for (uint i = 0; i < n; i++) tmp[i] = i;
        return tmp;
    }

    // modify storage via a storage reference
    function modifyWithStorageRef() external {
        uint[] storage refArr = arr;
        refArr.push(99);
    }
}
```

## Mappings

- Declaration Syntax: `mapping(KEY_TYPE => VALUE_TYPE)`

```solidity
pragma solidity ^0.8.0;

contract MappingExamples {
    // simple mapping
    mapping(address => uint256) public balances;

    // struct + mapping
    struct Person { string name; uint256 age; }
    mapping(uint256 => Person) public people;

    // nested mapping
    mapping(address => mapping(uint256 => bool)) public usedNonce;

    // set or overwrite a mapping entry
    function setBalance(address _addr, uint256 _amount) external {
        balances[_addr] = _amount; // add or update
    }

    // increment (read-modify-write)
    function deposit() external payable {
        balances[msg.sender] += msg.value;
    }

    // add a struct value
    function addPerson(uint256 _id, string memory _name, uint256 _age) external {
        people[_id] = Person({ name: _name, age: _age });
    }

    // set nested mapping
    function markNonceUsed(uint256 _nonce) external {
        usedNonce[msg.sender][_nonce] = true;
    }

    // remove an entry (resets to default)
    function clearBalance(address _addr) external {
        delete balances[_addr];
    }

    // read example (public getter generated for `balances` and others)
    function getBalance(address _addr) external view returns (uint256) {
        return balances[_addr];
    }
}
```
