#  FILE:  plugin/core/constexpr.py
#  DESCRIPTION:  protoc-gen-lua
#      Google's Protocol Buffers project, ported to lua.
#      https://github.com/klarkxy/protoc-gen-lua/
#
#      Copyright (c) 2021 , Klarkxy 278370456@qq.com
#      All rights reserved.
#
#      Use, modification and distribution are subject to the "New BSD License"
#      as listed at <url: http://www.opensource.org/licenses/bsd-license.php >.
#
#  COMPANY:  BlackFox
#  CREATED:  2021-12-06 18:10:54 CST

import google.protobuf.descriptor_pb2 as descriptor_pb2

proto_label_enum = {
    descriptor_pb2.FieldDescriptorProto.Label.LABEL_OPTIONAL: "google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_OPTIONAL",
    descriptor_pb2.FieldDescriptorProto.Label.LABEL_REQUIRED: "google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_REQUIRED",
    descriptor_pb2.FieldDescriptorProto.Label.LABEL_REPEATED: "google_protobuf_descriptor_pb.FieldDescriptorProto.Label.LABEL_REPEATED",
}

proto_type_enum = {
    descriptor_pb2.FieldDescriptorProto.Type.TYPE_DOUBLE: "google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_DOUBLE",
    descriptor_pb2.FieldDescriptorProto.Type.TYPE_FLOAT: "google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_FLOAT",
    descriptor_pb2.FieldDescriptorProto.Type.TYPE_INT64: "google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_INT64",
    descriptor_pb2.FieldDescriptorProto.Type.TYPE_UINT64: "google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_UINT64",
    descriptor_pb2.FieldDescriptorProto.Type.TYPE_INT32: "google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_INT32",
    descriptor_pb2.FieldDescriptorProto.Type.TYPE_FIXED64: "google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_FIXED64",
    descriptor_pb2.FieldDescriptorProto.Type.TYPE_FIXED32: "google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_FIXED32",
    descriptor_pb2.FieldDescriptorProto.Type.TYPE_BOOL: "google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_BOOL",
    descriptor_pb2.FieldDescriptorProto.Type.TYPE_STRING: "google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_STRING",
    descriptor_pb2.FieldDescriptorProto.Type.TYPE_GROUP: "google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_GROUP",
    descriptor_pb2.FieldDescriptorProto.Type.TYPE_MESSAGE: "google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_MESSAGE",
    descriptor_pb2.FieldDescriptorProto.Type.TYPE_BYTES: "google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_BYTES",
    descriptor_pb2.FieldDescriptorProto.Type.TYPE_UINT32: "google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_UINT32",
    descriptor_pb2.FieldDescriptorProto.Type.TYPE_ENUM: "google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_ENUM",
    descriptor_pb2.FieldDescriptorProto.Type.TYPE_SFIXED32: "google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_SFIXED32",
    descriptor_pb2.FieldDescriptorProto.Type.TYPE_SFIXED64: "google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_SFIXED64",
    descriptor_pb2.FieldDescriptorProto.Type.TYPE_SINT32: "google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_SINT32",
    descriptor_pb2.FieldDescriptorProto.Type.TYPE_SINT64: "google_protobuf_descriptor_pb.FieldDescriptorProto.Type.TYPE_SINT64",
}
