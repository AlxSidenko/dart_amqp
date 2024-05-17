// The file contains all method messages for AMQP class Queue (id: 50)
//
// File was auto-generated by generate_bindings.dart at 2019-03-21 11:46:08.132436
//
// Do not modify

// ignore_for_file: empty_constructor_bodies

part of "../../../protocol.dart";

class QueueDeclare implements Message {
  @override
  final bool msgHasContent = false;
  @override
  final int msgClassId = 50;
  @override
  final int msgMethodId = 10;

  // Message arguments
  int reserved_1 = 0;
  String? queue;
  bool passive = false;
  bool durable = false;
  bool exclusive = false;
  bool autoDelete = false;
  bool noWait = false;
  Map<String, Object>? arguments;

  QueueDeclare();

  @override
  void serialize(TypeEncoder encoder) {
    encoder
      ..writeUInt16(msgClassId)
      ..writeUInt16(msgMethodId)
      ..writeUInt16(reserved_1)
      ..writeShortString(queue)
      ..writeBits([passive, durable, exclusive, autoDelete, noWait])
      ..writeFieldTable(arguments);
  }
}

class QueueDeclareOk implements Message {
  @override
  final bool msgHasContent = false;
  @override
  final int msgClassId = 50;
  @override
  final int msgMethodId = 11;

  // Message arguments
  String? queue;
  int messageCount = 0;
  int consumerCount = 0;

  QueueDeclareOk.fromStream(TypeDecoder decoder) {
    queue = decoder.readShortString();
    messageCount = decoder.readUInt32();
    consumerCount = decoder.readUInt32();
  }

  @override
  void serialize(TypeEncoder encoder) {}
}

class QueueBind implements Message {
  @override
  final bool msgHasContent = false;
  @override
  final int msgClassId = 50;
  @override
  final int msgMethodId = 20;

  // Message arguments
  int reserved_1 = 0;
  String? queue;
  String? exchange;
  String? routingKey;
  bool noWait = false;
  Map<String, Object>? arguments;

  QueueBind();

  @override
  void serialize(TypeEncoder encoder) {
    encoder
      ..writeUInt16(msgClassId)
      ..writeUInt16(msgMethodId)
      ..writeUInt16(reserved_1)
      ..writeShortString(queue)
      ..writeShortString(exchange)
      ..writeShortString(routingKey)
      ..writeBits([noWait])
      ..writeFieldTable(arguments);
  }
}

class QueueBindOk implements Message {
  @override
  final bool msgHasContent = false;
  @override
  final int msgClassId = 50;
  @override
  final int msgMethodId = 21;

  // Message arguments

  QueueBindOk.fromStream(TypeDecoder decoder) {}

  @override
  void serialize(TypeEncoder encoder) {}
}

class QueueUnbind implements Message {
  @override
  final bool msgHasContent = false;
  @override
  final int msgClassId = 50;
  @override
  final int msgMethodId = 50;

  // Message arguments
  int reserved_1 = 0;
  String? queue;
  String? exchange;
  String? routingKey;
  Map<String, Object>? arguments;

  QueueUnbind();

  @override
  void serialize(TypeEncoder encoder) {
    encoder
      ..writeUInt16(msgClassId)
      ..writeUInt16(msgMethodId)
      ..writeUInt16(reserved_1)
      ..writeShortString(queue)
      ..writeShortString(exchange)
      ..writeShortString(routingKey)
      ..writeFieldTable(arguments);
  }
}

class QueueUnbindOk implements Message {
  @override
  final bool msgHasContent = false;
  @override
  final int msgClassId = 50;
  @override
  final int msgMethodId = 51;

  // Message arguments

  QueueUnbindOk.fromStream(TypeDecoder decoder) {}

  @override
  void serialize(TypeEncoder encoder) {}
}

class QueuePurge implements Message {
  @override
  final bool msgHasContent = false;
  @override
  final int msgClassId = 50;
  @override
  final int msgMethodId = 30;

  // Message arguments
  int reserved_1 = 0;
  String? queue;
  bool noWait = false;

  QueuePurge();

  @override
  void serialize(TypeEncoder encoder) {
    encoder
      ..writeUInt16(msgClassId)
      ..writeUInt16(msgMethodId)
      ..writeUInt16(reserved_1)
      ..writeShortString(queue)
      ..writeBits([noWait]);
  }
}

class QueuePurgeOk implements Message {
  @override
  final bool msgHasContent = false;
  @override
  final int msgClassId = 50;
  @override
  final int msgMethodId = 31;

  // Message arguments
  int messageCount = 0;

  QueuePurgeOk.fromStream(TypeDecoder decoder) {
    messageCount = decoder.readUInt32();
  }

  @override
  void serialize(TypeEncoder encoder) {}
}

class QueueDelete implements Message {
  @override
  final bool msgHasContent = false;
  @override
  final int msgClassId = 50;
  @override
  final int msgMethodId = 40;

  // Message arguments
  int reserved_1 = 0;
  String? queue;
  bool ifUnused = false;
  bool ifEmpty = false;
  bool noWait = false;

  QueueDelete();

  @override
  void serialize(TypeEncoder encoder) {
    encoder
      ..writeUInt16(msgClassId)
      ..writeUInt16(msgMethodId)
      ..writeUInt16(reserved_1)
      ..writeShortString(queue)
      ..writeBits([ifUnused, ifEmpty, noWait]);
  }
}

class QueueDeleteOk implements Message {
  @override
  final bool msgHasContent = false;
  @override
  final int msgClassId = 50;
  @override
  final int msgMethodId = 41;

  // Message arguments
  int messageCount = 0;

  QueueDeleteOk.fromStream(TypeDecoder decoder) {
    messageCount = decoder.readUInt32();
  }

  @override
  void serialize(TypeEncoder encoder) {}
}
