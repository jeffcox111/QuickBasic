  '
  '  BCRYPT 1.00
  '
  '  Declarations
  '
  '  Copyright 1993, J.D. Lyons, Mountain Bay Software
  '
  '  Password, key and string creation.
  '
  DECLARE FUNCTION Argen% (rseed$)
  DECLARE FUNCTION MakeAlpha$ ()
  DECLARE SUB MakeAlphaArray (A$())
  DECLARE SUB MakeAlphaNumArray (A$())
  DECLARE FUNCTION MakeAlphaNum$ ()
  DECLARE FUNCTION MakeLong$ ()
  DECLARE SUB MakeLongArray (A%())
  DECLARE FUNCTION MakePass$ (tf%, lf%)
  DECLARE FUNCTION MKLong$ (KeyVal$)
  DECLARE FUNCTION MKAlphaNum$ (KeyVal$)
  DECLARE FUNCTION MKAlpha$ (KeyVal$)
  DECLARE FUNCTION Mskey$ (strln%, sbv%, ssv%)
  '
  '  String handling.
  '
  DECLARE FUNCTION Reverse$ (Istrg$)
  DECLARE FUNCTION Rol$ (Istrg$)
  DECLARE FUNCTION Ror$ (Istrg$)
  DECLARE FUNCTION Scramble$ (Istrg$, KeyVal$, Scrambleflag%)
  '
  '  XOR encryption
  '
  DECLARE FUNCTION XorString$ (Istrg$, ckey%)
  DECLARE FUNCTION XorKeyVal$ (Istrg$, ckey$)
  DECLARE FUNCTION XorRkn$ (Istrg$, strt%, stp%)
  DECLARE FUNCTION XorRks$ (Istrg$, kst$, kpos%)
  DECLARE FUNCTION XorSingle$ (Istrg$, ckey%)
  '
  '  CRC Calculations
  '
  DECLARE FUNCTION CRC32& (X$)
  '
  '  Compression functions
  '
  DECLARE FUNCTION LZ.Decompress% (A$, B$, Bytes.Out%)
  DECLARE FUNCTION LZ.Compress% (A$, B$, Bytes.Out%)
  '
  '  End
  '
