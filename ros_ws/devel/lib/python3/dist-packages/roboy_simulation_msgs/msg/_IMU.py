# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from roboy_simulation_msgs/IMU.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class IMU(genpy.Message):
  _md5sum = "43bd0ffc55a345c6db23ba4b7f7d9cbc"
  _type = "roboy_simulation_msgs/IMU"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 roboy_id
string link
geometry_msgs/Point lin_accel_world
geometry_msgs/Point ang_vel_world

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['roboy_id','link','lin_accel_world','ang_vel_world']
  _slot_types = ['int32','string','geometry_msgs/Point','geometry_msgs/Point']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       roboy_id,link,lin_accel_world,ang_vel_world

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(IMU, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.roboy_id is None:
        self.roboy_id = 0
      if self.link is None:
        self.link = ''
      if self.lin_accel_world is None:
        self.lin_accel_world = geometry_msgs.msg.Point()
      if self.ang_vel_world is None:
        self.ang_vel_world = geometry_msgs.msg.Point()
    else:
      self.roboy_id = 0
      self.link = ''
      self.lin_accel_world = geometry_msgs.msg.Point()
      self.ang_vel_world = geometry_msgs.msg.Point()

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
      _x = self.roboy_id
      buff.write(_get_struct_i().pack(_x))
      _x = self.link
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_6d().pack(_x.lin_accel_world.x, _x.lin_accel_world.y, _x.lin_accel_world.z, _x.ang_vel_world.x, _x.ang_vel_world.y, _x.ang_vel_world.z))
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
      if self.lin_accel_world is None:
        self.lin_accel_world = geometry_msgs.msg.Point()
      if self.ang_vel_world is None:
        self.ang_vel_world = geometry_msgs.msg.Point()
      end = 0
      start = end
      end += 4
      (self.roboy_id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.link = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.link = str[start:end]
      _x = self
      start = end
      end += 48
      (_x.lin_accel_world.x, _x.lin_accel_world.y, _x.lin_accel_world.z, _x.ang_vel_world.x, _x.ang_vel_world.y, _x.ang_vel_world.z,) = _get_struct_6d().unpack(str[start:end])
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
      _x = self.roboy_id
      buff.write(_get_struct_i().pack(_x))
      _x = self.link
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_6d().pack(_x.lin_accel_world.x, _x.lin_accel_world.y, _x.lin_accel_world.z, _x.ang_vel_world.x, _x.ang_vel_world.y, _x.ang_vel_world.z))
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
      if self.lin_accel_world is None:
        self.lin_accel_world = geometry_msgs.msg.Point()
      if self.ang_vel_world is None:
        self.ang_vel_world = geometry_msgs.msg.Point()
      end = 0
      start = end
      end += 4
      (self.roboy_id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.link = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.link = str[start:end]
      _x = self
      start = end
      end += 48
      (_x.lin_accel_world.x, _x.lin_accel_world.y, _x.lin_accel_world.z, _x.ang_vel_world.x, _x.ang_vel_world.y, _x.ang_vel_world.z,) = _get_struct_6d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6d = None
def _get_struct_6d():
    global _struct_6d
    if _struct_6d is None:
        _struct_6d = struct.Struct("<6d")
    return _struct_6d
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
