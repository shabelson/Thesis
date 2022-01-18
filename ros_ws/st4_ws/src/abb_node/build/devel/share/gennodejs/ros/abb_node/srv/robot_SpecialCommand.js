// Auto-generated. Do not edit!

// (in-package abb_node.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class robot_SpecialCommandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
      this.param1 = null;
      this.param2 = null;
      this.param3 = null;
      this.param4 = null;
      this.param5 = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
      if (initObj.hasOwnProperty('param1')) {
        this.param1 = initObj.param1
      }
      else {
        this.param1 = 0.0;
      }
      if (initObj.hasOwnProperty('param2')) {
        this.param2 = initObj.param2
      }
      else {
        this.param2 = 0.0;
      }
      if (initObj.hasOwnProperty('param3')) {
        this.param3 = initObj.param3
      }
      else {
        this.param3 = 0.0;
      }
      if (initObj.hasOwnProperty('param4')) {
        this.param4 = initObj.param4
      }
      else {
        this.param4 = 0.0;
      }
      if (initObj.hasOwnProperty('param5')) {
        this.param5 = initObj.param5
      }
      else {
        this.param5 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_SpecialCommandRequest
    // Serialize message field [command]
    bufferOffset = _serializer.int64(obj.command, buffer, bufferOffset);
    // Serialize message field [param1]
    bufferOffset = _serializer.float64(obj.param1, buffer, bufferOffset);
    // Serialize message field [param2]
    bufferOffset = _serializer.float64(obj.param2, buffer, bufferOffset);
    // Serialize message field [param3]
    bufferOffset = _serializer.float64(obj.param3, buffer, bufferOffset);
    // Serialize message field [param4]
    bufferOffset = _serializer.float64(obj.param4, buffer, bufferOffset);
    // Serialize message field [param5]
    bufferOffset = _serializer.float64(obj.param5, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_SpecialCommandRequest
    let len;
    let data = new robot_SpecialCommandRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [param1]
    data.param1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [param2]
    data.param2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [param3]
    data.param3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [param4]
    data.param4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [param5]
    data.param5 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'abb_node/robot_SpecialCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '35641a14d68eae4e3f43fd2e5282cc04';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Service to run spcial command
    
    int64 command  #integer identificating the command to run
    float64 param1 #Special purpose parameter number 1
    float64 param2 #Special purpose parameter number 2
    float64 param3 #Special purpose parameter number 3
    float64 param4 #Special purpose parameter number 4
    float64 param5 #Special purpose parameter number 5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_SpecialCommandRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    if (msg.param1 !== undefined) {
      resolved.param1 = msg.param1;
    }
    else {
      resolved.param1 = 0.0
    }

    if (msg.param2 !== undefined) {
      resolved.param2 = msg.param2;
    }
    else {
      resolved.param2 = 0.0
    }

    if (msg.param3 !== undefined) {
      resolved.param3 = msg.param3;
    }
    else {
      resolved.param3 = 0.0
    }

    if (msg.param4 !== undefined) {
      resolved.param4 = msg.param4;
    }
    else {
      resolved.param4 = 0.0
    }

    if (msg.param5 !== undefined) {
      resolved.param5 = msg.param5;
    }
    else {
      resolved.param5 = 0.0
    }

    return resolved;
    }
};

class robot_SpecialCommandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ret = null;
      this.msg = null;
    }
    else {
      if (initObj.hasOwnProperty('ret')) {
        this.ret = initObj.ret
      }
      else {
        this.ret = 0;
      }
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_SpecialCommandResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.int64(obj.ret, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_SpecialCommandResponse
    let len;
    let data = new robot_SpecialCommandResponse(null);
    // Deserialize message field [ret]
    data.ret = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.msg.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'abb_node/robot_SpecialCommandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1e32786be6359fbbb6259aee4f579d10';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 ret
    string msg
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_SpecialCommandResponse(null);
    if (msg.ret !== undefined) {
      resolved.ret = msg.ret;
    }
    else {
      resolved.ret = 0
    }

    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: robot_SpecialCommandRequest,
  Response: robot_SpecialCommandResponse,
  md5sum() { return 'dd470c01f667d001d212037b2fe2c918'; },
  datatype() { return 'abb_node/robot_SpecialCommand'; }
};
