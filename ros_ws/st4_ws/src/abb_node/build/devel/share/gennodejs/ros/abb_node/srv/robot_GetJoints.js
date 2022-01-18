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

class robot_GetJointsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_GetJointsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_GetJointsRequest
    let len;
    let data = new robot_GetJointsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'abb_node/robot_GetJointsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Service to get joint angles of the robot
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_GetJointsRequest(null);
    return resolved;
    }
};

class robot_GetJointsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.j1 = null;
      this.j2 = null;
      this.j3 = null;
      this.j4 = null;
      this.j5 = null;
      this.j6 = null;
      this.ret = null;
      this.msg = null;
    }
    else {
      if (initObj.hasOwnProperty('j1')) {
        this.j1 = initObj.j1
      }
      else {
        this.j1 = 0.0;
      }
      if (initObj.hasOwnProperty('j2')) {
        this.j2 = initObj.j2
      }
      else {
        this.j2 = 0.0;
      }
      if (initObj.hasOwnProperty('j3')) {
        this.j3 = initObj.j3
      }
      else {
        this.j3 = 0.0;
      }
      if (initObj.hasOwnProperty('j4')) {
        this.j4 = initObj.j4
      }
      else {
        this.j4 = 0.0;
      }
      if (initObj.hasOwnProperty('j5')) {
        this.j5 = initObj.j5
      }
      else {
        this.j5 = 0.0;
      }
      if (initObj.hasOwnProperty('j6')) {
        this.j6 = initObj.j6
      }
      else {
        this.j6 = 0.0;
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
    // Serializes a message object of type robot_GetJointsResponse
    // Serialize message field [j1]
    bufferOffset = _serializer.float64(obj.j1, buffer, bufferOffset);
    // Serialize message field [j2]
    bufferOffset = _serializer.float64(obj.j2, buffer, bufferOffset);
    // Serialize message field [j3]
    bufferOffset = _serializer.float64(obj.j3, buffer, bufferOffset);
    // Serialize message field [j4]
    bufferOffset = _serializer.float64(obj.j4, buffer, bufferOffset);
    // Serialize message field [j5]
    bufferOffset = _serializer.float64(obj.j5, buffer, bufferOffset);
    // Serialize message field [j6]
    bufferOffset = _serializer.float64(obj.j6, buffer, bufferOffset);
    // Serialize message field [ret]
    bufferOffset = _serializer.int64(obj.ret, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_GetJointsResponse
    let len;
    let data = new robot_GetJointsResponse(null);
    // Deserialize message field [j1]
    data.j1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [j2]
    data.j2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [j3]
    data.j3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [j4]
    data.j4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [j5]
    data.j5 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [j6]
    data.j6 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ret]
    data.ret = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.msg.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a service object
    return 'abb_node/robot_GetJointsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '927b82d08077d046362055bd87d33b65';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 j1
    float64 j2
    float64 j3
    float64 j4
    float64 j5
    float64 j6
    int64 ret
    string msg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_GetJointsResponse(null);
    if (msg.j1 !== undefined) {
      resolved.j1 = msg.j1;
    }
    else {
      resolved.j1 = 0.0
    }

    if (msg.j2 !== undefined) {
      resolved.j2 = msg.j2;
    }
    else {
      resolved.j2 = 0.0
    }

    if (msg.j3 !== undefined) {
      resolved.j3 = msg.j3;
    }
    else {
      resolved.j3 = 0.0
    }

    if (msg.j4 !== undefined) {
      resolved.j4 = msg.j4;
    }
    else {
      resolved.j4 = 0.0
    }

    if (msg.j5 !== undefined) {
      resolved.j5 = msg.j5;
    }
    else {
      resolved.j5 = 0.0
    }

    if (msg.j6 !== undefined) {
      resolved.j6 = msg.j6;
    }
    else {
      resolved.j6 = 0.0
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
  Request: robot_GetJointsRequest,
  Response: robot_GetJointsResponse,
  md5sum() { return '927b82d08077d046362055bd87d33b65'; },
  datatype() { return 'abb_node/robot_GetJoints'; }
};
