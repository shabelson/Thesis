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

class robot_GetCartesianRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_GetCartesianRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_GetCartesianRequest
    let len;
    let data = new robot_GetCartesianRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'abb_node/robot_GetCartesianRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Service to get the cartesian position of the robot
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_GetCartesianRequest(null);
    return resolved;
    }
};

class robot_GetCartesianResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.q0 = null;
      this.qx = null;
      this.qy = null;
      this.qz = null;
      this.ret = null;
      this.msg = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('q0')) {
        this.q0 = initObj.q0
      }
      else {
        this.q0 = 0.0;
      }
      if (initObj.hasOwnProperty('qx')) {
        this.qx = initObj.qx
      }
      else {
        this.qx = 0.0;
      }
      if (initObj.hasOwnProperty('qy')) {
        this.qy = initObj.qy
      }
      else {
        this.qy = 0.0;
      }
      if (initObj.hasOwnProperty('qz')) {
        this.qz = initObj.qz
      }
      else {
        this.qz = 0.0;
      }
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
    // Serializes a message object of type robot_GetCartesianResponse
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [q0]
    bufferOffset = _serializer.float64(obj.q0, buffer, bufferOffset);
    // Serialize message field [qx]
    bufferOffset = _serializer.float64(obj.qx, buffer, bufferOffset);
    // Serialize message field [qy]
    bufferOffset = _serializer.float64(obj.qy, buffer, bufferOffset);
    // Serialize message field [qz]
    bufferOffset = _serializer.float64(obj.qz, buffer, bufferOffset);
    // Serialize message field [ret]
    bufferOffset = _serializer.int64(obj.ret, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_GetCartesianResponse
    let len;
    let data = new robot_GetCartesianResponse(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [q0]
    data.q0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [qx]
    data.qx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [qy]
    data.qy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [qz]
    data.qz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ret]
    data.ret = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.msg.length;
    return length + 68;
  }

  static datatype() {
    // Returns string type for a service object
    return 'abb_node/robot_GetCartesianResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3f432c2b24231bfa1982c3d95599d931';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x
    float64 y
    float64 z
    float64 q0
    float64 qx
    float64 qy
    float64 qz
    int64 ret
    string msg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_GetCartesianResponse(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.q0 !== undefined) {
      resolved.q0 = msg.q0;
    }
    else {
      resolved.q0 = 0.0
    }

    if (msg.qx !== undefined) {
      resolved.qx = msg.qx;
    }
    else {
      resolved.qx = 0.0
    }

    if (msg.qy !== undefined) {
      resolved.qy = msg.qy;
    }
    else {
      resolved.qy = 0.0
    }

    if (msg.qz !== undefined) {
      resolved.qz = msg.qz;
    }
    else {
      resolved.qz = 0.0
    }

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
  Request: robot_GetCartesianRequest,
  Response: robot_GetCartesianResponse,
  md5sum() { return '3f432c2b24231bfa1982c3d95599d931'; },
  datatype() { return 'abb_node/robot_GetCartesian'; }
};
