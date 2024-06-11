# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from roboy_cognition_msgs/RecognizeFacesRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import roboy_cognition_msgs.msg

class RecognizeFacesRequest(genpy.Message):
  _md5sum = "083413108b4614ba96f55f9dd5867d9c"
  _type = "roboy_cognition_msgs/RecognizeFacesRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """FacialFeatures[] encodings

================================================================================
MSG: roboy_cognition_msgs/FacialFeatures
#only for unrecognized faces
#is person speaking?
bool speaking
#facial features (128x1 vector)
float64[128] ff
"""
  __slots__ = ['encodings']
  _slot_types = ['roboy_cognition_msgs/FacialFeatures[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       encodings

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RecognizeFacesRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.encodings is None:
        self.encodings = []
    else:
      self.encodings = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.encodings)
      buff.write(_struct_I.pack(length))
      for val1 in self.encodings:
        _x = val1.speaking
        buff.write(_get_struct_B().pack(_x))
        buff.write(_get_struct_128d().pack(*val1.ff))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.encodings is None:
        self.encodings = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.encodings = []
      for i in range(0, length):
        val1 = roboy_cognition_msgs.msg.FacialFeatures()
        start = end
        end += 1
        (val1.speaking,) = _get_struct_B().unpack(str[start:end])
        val1.speaking = bool(val1.speaking)
        start = end
        end += 1024
        val1.ff = _get_struct_128d().unpack(str[start:end])
        self.encodings.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.encodings)
      buff.write(_struct_I.pack(length))
      for val1 in self.encodings:
        _x = val1.speaking
        buff.write(_get_struct_B().pack(_x))
        buff.write(val1.ff.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.encodings is None:
        self.encodings = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.encodings = []
      for i in range(0, length):
        val1 = roboy_cognition_msgs.msg.FacialFeatures()
        start = end
        end += 1
        (val1.speaking,) = _get_struct_B().unpack(str[start:end])
        val1.speaking = bool(val1.speaking)
        start = end
        end += 1024
        val1.ff = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=128)
        self.encodings.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_128d = None
def _get_struct_128d():
    global _struct_128d
    if _struct_128d is None:
        _struct_128d = struct.Struct("<128d")
    return _struct_128d
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from roboy_cognition_msgs/RecognizeFacesResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class RecognizeFacesResponse(genpy.Message):
  _md5sum = "f1c93df92c259a3092c20b630d063988"
  _type = "roboy_cognition_msgs/RecognizeFacesResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string[] names
float64[] confidence

"""
  __slots__ = ['names','confidence']
  _slot_types = ['string[]','float64[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       names,confidence

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RecognizeFacesResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.names is None:
        self.names = []
      if self.confidence is None:
        self.confidence = []
    else:
      self.names = []
      self.confidence = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.names)
      buff.write(_struct_I.pack(length))
      for val1 in self.names:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      length = len(self.confidence)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.confidence))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.names = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.names.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.confidence = s.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.names)
      buff.write(_struct_I.pack(length))
      for val1 in self.names:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      length = len(self.confidence)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.confidence.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.names = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.names.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.confidence = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
class RecognizeFaces(object):
  _type          = 'roboy_cognition_msgs/RecognizeFaces'
  _md5sum = 'cc12f589e5227d96fb8b8056d9ae50c9'
  _request_class  = RecognizeFacesRequest
  _response_class = RecognizeFacesResponse
