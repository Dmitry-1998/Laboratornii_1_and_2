// Auto-generated. Do not edit!

// (in-package my_service.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddIntsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rub = null;
    }
    else {
      if (initObj.hasOwnProperty('rub')) {
        this.rub = initObj.rub
      }
      else {
        this.rub = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddIntsRequest
    // Serialize message field [rub]
    bufferOffset = _serializer.float32(obj.rub, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddIntsRequest
    let len;
    let data = new AddIntsRequest(null);
    // Deserialize message field [rub]
    data.rub = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_service/AddIntsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5905cfa5270c0aec2386c94a1fb0919d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 rub
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddIntsRequest(null);
    if (msg.rub !== undefined) {
      resolved.rub = msg.rub;
    }
    else {
      resolved.rub = 0.0
    }

    return resolved;
    }
};

class AddIntsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.usd = null;
      this.eur = null;
      this.gbp = null;
      this.ugx = null;
    }
    else {
      if (initObj.hasOwnProperty('usd')) {
        this.usd = initObj.usd
      }
      else {
        this.usd = 0.0;
      }
      if (initObj.hasOwnProperty('eur')) {
        this.eur = initObj.eur
      }
      else {
        this.eur = 0.0;
      }
      if (initObj.hasOwnProperty('gbp')) {
        this.gbp = initObj.gbp
      }
      else {
        this.gbp = 0.0;
      }
      if (initObj.hasOwnProperty('ugx')) {
        this.ugx = initObj.ugx
      }
      else {
        this.ugx = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddIntsResponse
    // Serialize message field [usd]
    bufferOffset = _serializer.float32(obj.usd, buffer, bufferOffset);
    // Serialize message field [eur]
    bufferOffset = _serializer.float32(obj.eur, buffer, bufferOffset);
    // Serialize message field [gbp]
    bufferOffset = _serializer.float32(obj.gbp, buffer, bufferOffset);
    // Serialize message field [ugx]
    bufferOffset = _serializer.float32(obj.ugx, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddIntsResponse
    let len;
    let data = new AddIntsResponse(null);
    // Deserialize message field [usd]
    data.usd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [eur]
    data.eur = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gbp]
    data.gbp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ugx]
    data.ugx = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_service/AddIntsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c4d8e1c74981566ab299cbcfacfa93d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 usd
    float32 eur
    float32 gbp
    float32 ugx
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddIntsResponse(null);
    if (msg.usd !== undefined) {
      resolved.usd = msg.usd;
    }
    else {
      resolved.usd = 0.0
    }

    if (msg.eur !== undefined) {
      resolved.eur = msg.eur;
    }
    else {
      resolved.eur = 0.0
    }

    if (msg.gbp !== undefined) {
      resolved.gbp = msg.gbp;
    }
    else {
      resolved.gbp = 0.0
    }

    if (msg.ugx !== undefined) {
      resolved.ugx = msg.ugx;
    }
    else {
      resolved.ugx = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: AddIntsRequest,
  Response: AddIntsResponse,
  md5sum() { return '3c72cd28ddbd098223277d9fa06286ae'; },
  datatype() { return 'my_service/AddInts'; }
};
