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

class robot_SetTrackDistRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pos_dist = null;
      this.ang_dist = null;
    }
    else {
      if (initObj.hasOwnProperty('pos_dist')) {
        this.pos_dist = initObj.pos_dist
      }
      else {
        this.pos_dist = 0.0;
      }
      if (initObj.hasOwnProperty('ang_dist')) {
        this.ang_dist = initObj.ang_dist
      }
      else {
        this.ang_dist = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_SetTrackDistRequest
    // Serialize message field [pos_dist]
    bufferOffset = _serializer.float64(obj.pos_dist, buffer, bufferOffset);
    // Serialize message field [ang_dist]
    bufferOffset = _serializer.float64(obj.ang_dist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_SetTrackDistRequest
    let len;
    let data = new robot_SetTrackDistRequest(null);
    // Deserialize message field [pos_dist]
    data.pos_dist = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ang_dist]
    data.ang_dist = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'abb_node/robot_SetTrackDistRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '83ebed908297f9c3e07ef540f9857ab1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Service to Set the tracking distance of the robot while in non-blocking mode
    
    float64 pos_dist  # mm
    float64 ang_dist  # deg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_SetTrackDistRequest(null);
    if (msg.pos_dist !== undefined) {
      resolved.pos_dist = msg.pos_dist;
    }
    else {
      resolved.pos_dist = 0.0
    }

    if (msg.ang_dist !== undefined) {
      resolved.ang_dist = msg.ang_dist;
    }
    else {
      resolved.ang_dist = 0.0
    }

    return resolved;
    }
};

class robot_SetTrackDistResponse {
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
    // Serializes a message object of type robot_SetTrackDistResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.int64(obj.ret, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_SetTrackDistResponse
    let len;
    let data = new robot_SetTrackDistResponse(null);
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
    return 'abb_node/robot_SetTrackDistResponse';
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
    const resolved = new robot_SetTrackDistResponse(null);
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
  Request: robot_SetTrackDistRequest,
  Response: robot_SetTrackDistResponse,
  md5sum() { return 'eb267eb8369d9c3a686d934285ba7a11'; },
  datatype() { return 'abb_node/robot_SetTrackDist'; }
};
