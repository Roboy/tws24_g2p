# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from roboy_cognition_msgs/QualityOfTonesRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class QualityOfTonesRequest(genpy.Message):
  _md5sum = "5428a71035998cbb0ba75d33cb81c7ab"
  _type = "roboy_cognition_msgs/QualityOfTonesRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 time_in_milliseconds
bool major_only
"""
  __slots__ = ['time_in_milliseconds','major_only']
  _slot_types = ['float32','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       time_in_milliseconds,major_only

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(QualityOfTonesRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.time_in_milliseconds is None:
        self.time_in_milliseconds = 0.
      if self.major_only is None:
        self.major_only = False
    else:
      self.time_in_milliseconds = 0.
      self.major_only = False

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
      _x = self
      buff.write(_get_struct_fB().pack(_x.time_in_milliseconds, _x.major_only))
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
      _x = self
      start = end
      end += 5
      (_x.time_in_milliseconds, _x.major_only,) = _get_struct_fB().unpack(str[start:end])
      self.major_only = bool(self.major_only)
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
      _x = self
      buff.write(_get_struct_fB().pack(_x.time_in_milliseconds, _x.major_only))
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
      _x = self
      start = end
      end += 5
      (_x.time_in_milliseconds, _x.major_only,) = _get_struct_fB().unpack(str[start:end])
      self.major_only = bool(self.major_only)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_fB = None
def _get_struct_fB():
    global _struct_fB
    if _struct_fB is None:
        _struct_fB = struct.Struct("<fB")
    return _struct_fB
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from roboy_cognition_msgs/QualityOfTonesResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class QualityOfTonesResponse(genpy.Message):
  _md5sum = "391202cc3dfe3974294cb7b6c92a871c"
  _type = "roboy_cognition_msgs/QualityOfTonesResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32[] quality
float32[] purity
float32 direction_z
float32[] direction_y
bool hit_pin

"""
  __slots__ = ['quality','purity','direction_z','direction_y','hit_pin']
  _slot_types = ['float32[]','float32[]','float32','float32[]','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       quality,purity,direction_z,direction_y,hit_pin

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(QualityOfTonesResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.quality is None:
        self.quality = []
      if self.purity is None:
        self.purity = []
      if self.direction_z is None:
        self.direction_z = 0.
      if self.direction_y is None:
        self.direction_y = []
      if self.hit_pin is None:
        self.hit_pin = False
    else:
      self.quality = []
      self.purity = []
      self.direction_z = 0.
      self.direction_y = []
      self.hit_pin = False

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
      length = len(self.quality)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.quality))
      length = len(self.purity)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.purity))
      _x = self.direction_z
      buff.write(_get_struct_f().pack(_x))
      length = len(self.direction_y)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.direction_y))
      _x = self.hit_pin
      buff.write(_get_struct_B().pack(_x))
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
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.quality = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.purity = s.unpack(str[start:end])
      start = end
      end += 4
      (self.direction_z,) = _get_struct_f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.direction_y = s.unpack(str[start:end])
      start = end
      end += 1
      (self.hit_pin,) = _get_struct_B().unpack(str[start:end])
      self.hit_pin = bool(self.hit_pin)
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
      length = len(self.quality)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.quality.tostring())
      length = len(self.purity)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.purity.tostring())
      _x = self.direction_z
      buff.write(_get_struct_f().pack(_x))
      length = len(self.direction_y)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.direction_y.tostring())
      _x = self.hit_pin
      buff.write(_get_struct_B().pack(_x))
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
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.quality = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.purity = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (self.direction_z,) = _get_struct_f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.direction_y = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 1
      (self.hit_pin,) = _get_struct_B().unpack(str[start:end])
      self.hit_pin = bool(self.hit_pin)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f
class QualityOfTones(object):
  _type          = 'roboy_cognition_msgs/QualityOfTones'
  _md5sum = 'fc70456230b8a068be395f059adcde0e'
  _request_class  = QualityOfTonesRequest
  _response_class = QualityOfTonesResponse
