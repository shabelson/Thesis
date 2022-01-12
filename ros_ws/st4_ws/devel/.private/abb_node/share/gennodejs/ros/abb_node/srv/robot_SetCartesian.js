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

class robot_SetCartesianRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cartesian = null;
      this.quaternion = null;
    }
    else {
      if (initObj.hasOwnProperty('cartesian')) {
        this.cartesian = initObj.cartesian
      }
      else {
        this.cartesian = [];
      }
      if (initObj.hasOwnProperty('quaternion')) {
        this.quaternion = initObj.quaternion
      }
      else {
        this.quaternion = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_SetCartesianRequest
    // Serialize message field [cartesian]
    bufferOffset = _arraySerializer.float64(obj.cartesian, buffer, bufferOffset, null);
    // Serialize message field [quaternion]
    bufferOffset = _arraySerializer.float64(obj.quaternion, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_SetCartesianRequest
    let len;
    let data = new robot_SetCartesianRequest(null);
    // Deserialize message field [cartesian]
    data.cartesian = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [quaternion]
    data.quaternion = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.cartesian.length;
    length += 8 * object.quaternion.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'abb_node/robot_SetCartesianRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58d2d1e6aec0ba31449f4caaba772e31';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Service to Set Cartesians
    float64[] cartesian
    float64[] quaternion
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_SetCartesianRequest(null);
    if (msg.cartesian !== undefined) {
      resolved.cartesian = msg.cartesian;
    }
    else {
      resolved.cartesian = []
    }

    if (msg.quaternion !== undefined) {
      resolved.quaternion = msg.quaternion;
    }
    else {
      resolved.quaternion = []
    }

    return resolved;
    }
};

class robot_SetCartesianResponse {
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
    // Serializes a message object of type robot_SetCartesianResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.int64(obj.ret, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_SetCartesianResponse
    let len;
    let data = new robot_SetCartesianResponse(null);
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
    return 'abb_node/robot_SetCartesianResponse';
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
    const resolved = new robot_SetCartesianResponse(null);
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
  Request: robot_SetCartesianRequest,
  Response: robot_SetCartesianResponse,
  md5sum() { return '4aa959d966f8a29fdd7f035d2997b10c'; },
  datatype() { return 'abb_node/robot_SetCartesian'; }
};
