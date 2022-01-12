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

class robot_SetVacuumRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vacuum = null;
    }
    else {
      if (initObj.hasOwnProperty('vacuum')) {
        this.vacuum = initObj.vacuum
      }
      else {
        this.vacuum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_SetVacuumRequest
    // Serialize message field [vacuum]
    bufferOffset = _serializer.int64(obj.vacuum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_SetVacuumRequest
    let len;
    let data = new robot_SetVacuumRequest(null);
    // Deserialize message field [vacuum]
    data.vacuum = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'abb_node/robot_SetVacuumRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ee7741d1da0c9620d77add3d4997c2d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Service to set vacuum on/off
    
    int64 vacuum  #1-on; 0-off
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_SetVacuumRequest(null);
    if (msg.vacuum !== undefined) {
      resolved.vacuum = msg.vacuum;
    }
    else {
      resolved.vacuum = 0
    }

    return resolved;
    }
};

class robot_SetVacuumResponse {
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
    // Serializes a message object of type robot_SetVacuumResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.int64(obj.ret, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_SetVacuumResponse
    let len;
    let data = new robot_SetVacuumResponse(null);
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
    return 'abb_node/robot_SetVacuumResponse';
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
    const resolved = new robot_SetVacuumResponse(null);
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
  Request: robot_SetVacuumRequest,
  Response: robot_SetVacuumResponse,
  md5sum() { return 'bc2b2a4e5d5d788edc958a62cf84dc1f'; },
  datatype() { return 'abb_node/robot_SetVacuum'; }
};
