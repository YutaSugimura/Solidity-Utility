pragma solidity ^0.5.0;

contract StrConnect {

  function twoStrConnect(string memory _str1, string memory _str2) internal view returns(string memory){
    string memory str1 = _str1;
    string memory str2 = _str2;
    bytes memory strbyte1 = bytes(str1);
    bytes memory strbyte2 = bytes(str2);

    bytes memory str = new bytes(strbyte1.length + strbyte2.length);

    uint8 point = 0;
    for(uint8 j = 0; j < strbyte1.length;j++){
      str[point] = strbyte1[j];
      point++;
    }
    for(uint8 k = 0; k < strbyte2.length;k++){
      str[point] = strbyte2[k];
      point++;
    }
    return string(str);
  }

  function threeStrConnect(string memory _str1, string memory _str2, string memory _str3) internal view returns(string memory) {
    string memory str1 = _str1;
    string memory str2 = _str2;
    string memory str3 = _str3;
    bytes memory strbyte1 = bytes(str1);
    bytes memory strbyte2 = bytes(str2);
    bytes memory strbyte3 = bytes(str3);

    bytes memory str = new bytes(strbyte1.length + strbyte2.length + strbyte3.length);

    uint8 point = 0;
    for(uint8 j = 0; j < strbyte1.length;j++){
      str[point] = strbyte1[j];
      point++;
    }
    for(uint8 k = 0; k < strbyte2.length;k++){
      str[point] = strbyte2[k];
      point++;
    }
    for(uint8 k = 0; k < strbyte3.length;k++){
      str[point] = strbyte3[k];
      point++;
    }
    return string(str);
  }

}