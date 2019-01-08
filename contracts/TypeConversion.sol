pragma solidity ^0.5.0;


contract TypeConversion {

  function uintToBytes(uint v)view internal returns(bytes32 ret) {
    if (v == 0) {
      ret = '0';
    }
    else {
      while (v > 0) {
        ret = bytes32(uint(ret) / (2 ** 8));
        ret |= bytes32(((v % 10) + 48) * 2 ** (8 * 31));
        v /= 10;
      }
    }
    return ret;
  }
    
  function bytesToString(bytes memory _bytes) view internal returns(string memory) {
    bytes memory str = new bytes(_bytes.length);

    uint8 point = 0;
    for(uint8 j = 0; j < _bytes.length;j++){
      str[point] = _bytes[j];
      point++;
    }
    return string(str);
  }

  function uintToStrings(uint _uint) view internal returns(string memory) {
    bytes memory b = abi.encodePacked(uintToBytes(_uint));
    string memory c = bytesToString(b);
        
    return c;
  }
}