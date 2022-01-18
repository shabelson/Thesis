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

class robot_SetSpeedRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tcp = null;
      this.ori = null;
    }
    else {
      if (initObj.hasOwnProperty('tcp')) {
        this.tcp = initObj.tcp
      }
      else {
        this.tcp = 0.0;
      }
      if (initObj.hasOwnProperty('ori')) {
        this.ori = initObj.ori
      }
      else {
        this.ori = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_SetSpeedRequest
    // Serialize message field [tcp]
    bufferOffset = _serializer.float64(obj.tcp, buffer, bufferOffset);
    // Serialize message field [ori]
    bufferOffset = _serializer.float64(obj.ori, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_SetSpeedRequest
    let len;
    let data = new robot_SetSpeedRequest(null);
    // Deserialize message field [tcp]
    data.tcp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ori]
    data.ori = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'abb_node/robot_SetSpeedRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f0ff1193cfb3499a7608d4091f40f93';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Service to Set the max Speed of the robot.
    
    float64 tcp  # mm/s
    float64 ori  # deg/s
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_SetSpeedRequest(null);
    if (msg.tcp !== undefined) {
      resolved.tcp = msg.tcp;
    }
    else {
      resolved.tcp = 0.0
    }

    if (msg.ori !== undefined) {
      resolved.ori = msg.ori;
    }
    else {
      resolved.ori = 0.0
    }

    return resolved;
    }
};

class robot_SetSpeedResponse {
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
    // Serializes a message object of type robot_SetSpeedResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.int64(obj.ret, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_SetSpeedResponse
    let len;
    let data = new robot_SetSpeedResponse(null);
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
    return 'abb_node/robot_SetSpeedResponse';
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
    const resolved = new robot_SetSpeedResponse(null);
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
  Request: robot_SetSpeedRequest,
  Response: robot_SetSpeedResponse,
  md5sum() { return '333d89e728aabc050c209d2cd3cd6dc2'; },
  datatype() { return 'abb_node/robot_SetSpeed'; }
};
