define pxe::images::resources () {

  if ! defined(File["$tftp_root/images"]) { @file { "$tftp_root/images": ensure => directory; } }
  if ! defined(File["$tftp_root/images/$os"]) { @file { "$tftp_root/images/$os": ensure => directory; } }
  if ! defined(File["$tftp_root/images/$os/$ver"]) { @file { "$tftp_root/images/$os/$ver": ensure => directory; } }
  if ! defined(File["$tftp_root/images/$os/$ver/$arch"]) { @file { "$tftp_root/images/$os/$ver/$arch": ensure => directory; } }

}