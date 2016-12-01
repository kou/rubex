#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.14
# from Racc grammer file "".
#

require 'racc/parser.rb'

require_relative 'lexer.rex.rb'
require_relative 'ast.rb'

include Rubex::AST

module Rubex
  class Parser < Racc::Parser

module_eval(<<'...end parser.racc/module_eval...', 'parser.racc', 137)

def parse file_name
  @lexer = Rubex::Lexer.new
  @lexer.parse_file file_name
  @yydebug = true
end

def next_token
  @lexer.next_token
end
...end parser.racc/module_eval...
##### State transition tables begin ###

racc_action_table = [
    41,    14,    15,    19,    20,    21,    22,    23,    24,    25,
    26,    27,    28,    29,    30,    31,    32,    33,    34,    35,
    36,    37,     3,     5,    18,    14,    15,    19,    20,    21,
    22,    23,    24,    25,    26,    27,    28,    29,    30,    31,
    32,    33,    34,    35,    36,    37,     6,     8,    18,    19,
    20,    21,    22,    23,    24,    25,    26,    27,    28,    29,
    30,    31,    32,    33,    34,    35,    36,    37,    19,    20,
    21,    22,    23,    24,    25,    26,    27,    28,    29,    30,
    31,    32,    33,    34,    35,    36,    37,    59,    60,    61,
    62,    63,    64,    53,    10,    44,    54,    67,    68,    69,
    46,    46,    51,    52,    55,    44,    44,    65,    52,    44,
    72,    51 ]

racc_action_check = [
    11,    11,    11,    11,    11,    11,    11,    11,    11,    11,
    11,    11,    11,    11,    11,    11,    11,    11,    11,    11,
    11,    11,     1,     2,    11,     9,     9,     9,     9,     9,
     9,     9,     9,     9,     9,     9,     9,     9,     9,     9,
     9,     9,     9,     9,     9,     9,     3,     5,     9,    10,
    10,    10,    10,    10,    10,    10,    10,    10,    10,    10,
    10,    10,    10,    10,    10,    10,    10,    10,    54,    54,
    54,    54,    54,    54,    54,    54,    54,    54,    54,    54,
    54,    54,    54,    54,    54,    54,    54,    46,    46,    46,
    46,    46,    46,    38,     7,    12,    38,    52,    52,    52,
    14,    15,    16,    18,    40,    41,    42,    48,    51,    53,
    58,    65 ]

racc_action_pointer = [
   nil,    22,    21,    46,   nil,    20,   nil,    69,   nil,    21,
    43,    -3,    67,   nil,    73,    74,    75,   nil,    65,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    67,   nil,
    77,    77,    78,   nil,   nil,   nil,    55,   nil,    78,   nil,
   nil,    70,    58,    81,    62,   nil,   nil,   nil,    83,   nil,
   nil,   nil,   nil,   nil,   nil,    84,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil ]

racc_action_default = [
    -3,   -55,    -1,   -55,    -2,   -55,    75,   -55,   -22,   -10,
   -55,   -10,   -55,    -7,   -55,   -55,   -55,   -12,   -55,   -29,
   -30,   -31,   -32,   -33,   -34,   -35,   -36,   -37,   -38,   -39,
   -40,   -41,   -42,   -43,   -44,   -45,   -46,   -47,   -55,   -25,
   -55,   -55,   -55,    -6,   -54,    -8,   -28,    -9,   -11,   -15,
   -16,   -17,   -55,   -55,   -55,   -26,    -4,    -5,   -55,   -48,
   -49,   -50,   -51,   -52,   -53,   -55,   -18,   -19,   -20,   -21,
   -23,   -24,   -27,   -13,   -14 ]

racc_goto_table = [
    50,    49,    40,    39,    43,    12,     1,    42,    45,    47,
     2,     4,     7,     9,    11,    48,    66,    38,    58,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    56,    57,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,    70,    40,    71,   nil,    73,
    74 ]

racc_goto_check = [
    13,    14,    11,    17,     7,     8,     1,     8,    10,    10,
     2,     3,     4,     5,     6,    12,    15,    16,    18,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,     7,     7,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,     7,    11,    17,   nil,    13,
    14 ]

racc_goto_pointer = [
   nil,     6,    10,     9,     7,     6,     5,    -8,    -4,   nil,
    -6,    -8,    -1,   -16,   -15,   -36,     7,    -7,   -28 ]

racc_goto_default = [
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    13,
   nil,    16,   nil,    17,   nil,   nil,   nil,   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 43, :_reduce_1,
  2, 44, :_reduce_2,
  0, 44, :_reduce_3,
  6, 45, :_reduce_4,
  3, 48, :_reduce_5,
  2, 48, :_reduce_6,
  1, 50, :_reduce_7,
  2, 50, :_reduce_8,
  2, 50, :_reduce_9,
  0, 50, :_reduce_10,
  2, 51, :_reduce_11,
  1, 51, :_reduce_12,
  3, 54, :_reduce_13,
  3, 54, :_reduce_14,
  1, 54, :_reduce_15,
  1, 54, :_reduce_16,
  1, 56, :_reduce_17,
  3, 55, :_reduce_18,
  1, 57, :_reduce_19,
  1, 57, :_reduce_20,
  1, 57, :_reduce_21,
  1, 46, :_reduce_22,
  4, 47, :_reduce_23,
  3, 58, :_reduce_24,
  1, 58, :_reduce_25,
  2, 59, :_reduce_26,
  3, 52, :_reduce_27,
  1, 52, :_reduce_28,
  1, 53, :_reduce_none,
  1, 53, :_reduce_none,
  1, 53, :_reduce_none,
  1, 53, :_reduce_none,
  1, 53, :_reduce_none,
  1, 53, :_reduce_none,
  1, 53, :_reduce_none,
  1, 53, :_reduce_none,
  1, 53, :_reduce_none,
  1, 53, :_reduce_none,
  1, 53, :_reduce_none,
  1, 53, :_reduce_none,
  1, 53, :_reduce_none,
  1, 53, :_reduce_none,
  1, 53, :_reduce_none,
  1, 53, :_reduce_none,
  1, 53, :_reduce_none,
  1, 53, :_reduce_none,
  1, 53, :_reduce_47,
  1, 60, :_reduce_none,
  1, 60, :_reduce_none,
  1, 60, :_reduce_none,
  1, 60, :_reduce_none,
  1, 60, :_reduce_none,
  1, 60, :_reduce_53,
  1, 49, :_reduce_54 ]

racc_reduce_n = 55

racc_shift_n = 75

racc_token_table = {
  false => 0,
  :error => 1,
  :kDEF => 2,
  :kEND => 3,
  :kRETURN => 4,
  :kPRINT => 5,
  :kDTYPE_UINT => 6,
  :kDTYPE_LINT => 7,
  :kDTYPE_LLINT => 8,
  :kDTYPE_CHAR => 9,
  :kDTYPE_I8 => 10,
  :kDTYPE_I16 => 11,
  :kDTYPE_I32 => 12,
  :kDTYPE_I64 => 13,
  :kDTYPE_UI8 => 14,
  :kDTYPE_UI16 => 15,
  :kDTYPE_UI32 => 16,
  :kDTYPE_UI64 => 17,
  :kDTYPE_INT => 18,
  :kDTYPE_F32 => 19,
  :kDTYPE_F64 => 20,
  :kDTYPE_LF64 => 21,
  :kDTYPE_ROBJ => 22,
  :kDTYPE_ULINT => 23,
  :kDTYPE_ULLINT => 24,
  :tLPAREN => 25,
  :tRPAREN => 26,
  :tIDENTIFIER => 27,
  :tNL => 28,
  :tCOMMA => 29,
  :tSQUOTE => 30,
  :EOF => 31,
  :tPLUS => 32,
  :tMINUS => 33,
  :tMULTIPLY => 34,
  :tDIVIDE => 35,
  :tEXPO => 36,
  :tMODULUS => 37,
  :tASSIGN => 38,
  :tINTEGER => 39,
  :tFLOAT => 40,
  :tSINGLE_CHAR => 41 }

racc_nt_base = 42

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "kDEF",
  "kEND",
  "kRETURN",
  "kPRINT",
  "kDTYPE_UINT",
  "kDTYPE_LINT",
  "kDTYPE_LLINT",
  "kDTYPE_CHAR",
  "kDTYPE_I8",
  "kDTYPE_I16",
  "kDTYPE_I32",
  "kDTYPE_I64",
  "kDTYPE_UI8",
  "kDTYPE_UI16",
  "kDTYPE_UI32",
  "kDTYPE_UI64",
  "kDTYPE_INT",
  "kDTYPE_F32",
  "kDTYPE_F64",
  "kDTYPE_LF64",
  "kDTYPE_ROBJ",
  "kDTYPE_ULINT",
  "kDTYPE_ULLINT",
  "tLPAREN",
  "tRPAREN",
  "tIDENTIFIER",
  "tNL",
  "tCOMMA",
  "tSQUOTE",
  "EOF",
  "tPLUS",
  "tMINUS",
  "tMULTIPLY",
  "tDIVIDE",
  "tEXPO",
  "tMODULUS",
  "tASSIGN",
  "tINTEGER",
  "tFLOAT",
  "tSINGLE_CHAR",
  "$start",
  "program",
  "methods",
  "ruby_method",
  "f_name",
  "f_arglist",
  "stmts",
  "eol",
  "stmt",
  "var_decl_or_init",
  "expr",
  "dtype",
  "decl_or_init",
  "normal_init",
  "normal_decl",
  "literal",
  "f_args",
  "f_normal_arg",
  "binary_op" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'parser.racc', 25)
  def _reduce_1(val, _values, result)
     result = Node.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 28)
  def _reduce_2(val, _values, result)
     result = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 29)
  def _reduce_3(val, _values, result)
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 34)
  def _reduce_4(val, _values, result)
            result = RubyMethodDef.new(val[1], val[2], val[3])
      
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 38)
  def _reduce_5(val, _values, result)
     result = [*val[0], *val[1]]; 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 39)
  def _reduce_6(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 44)
  def _reduce_7(val, _values, result)
            variables = []
        dtype = val[0][:dtype]
        val[0][:decl_or_init].each do |di|
          var = Statement::VariableDeclaration.new(dtype, di[:name], di[:value])
          variables << var
        end

        result = variables
      
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 53)
  def _reduce_8(val, _values, result)
     result = Statement::Return.new val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 54)
  def _reduce_9(val, _values, result)
     result = Statement::Print.new val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 55)
  def _reduce_10(val, _values, result)
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 60)
  def _reduce_11(val, _values, result)
            result = {
          dtype: val[0],
          decl_or_init: val[1]
        }
      
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 67)
  def _reduce_12(val, _values, result)
            result = {
          dtype: 'object',
          decl_or_init: [val[0]]
        }
      
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 74)
  def _reduce_13(val, _values, result)
     result = [*val[0], val[2]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 75)
  def _reduce_14(val, _values, result)
     result = [*val[0], val[2]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 76)
  def _reduce_15(val, _values, result)
     result = [val[0]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 77)
  def _reduce_16(val, _values, result)
     result = [val[0]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 80)
  def _reduce_17(val, _values, result)
     result = { name: val[0] } 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 83)
  def _reduce_18(val, _values, result)
     result = { name: val[0], value: val[2] } 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 86)
  def _reduce_19(val, _values, result)
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 87)
  def _reduce_20(val, _values, result)
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 88)
  def _reduce_21(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 91)
  def _reduce_22(val, _values, result)
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 94)
  def _reduce_23(val, _values, result)
     result = ArgumentList.new val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 99)
  def _reduce_24(val, _values, result)
            result = [*val[0], val[2]]
      
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 101)
  def _reduce_25(val, _values, result)
     result = [val[0]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 104)
  def _reduce_26(val, _values, result)
     result = CBaseType.new val[0], val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 109)
  def _reduce_27(val, _values, result)
            result = Expression::Addition.new val[0], val[2]
      
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 111)
  def _reduce_28(val, _values, result)
    
    result
  end
.,.,

# reduce 29 omitted

# reduce 30 omitted

# reduce 31 omitted

# reduce 32 omitted

# reduce 33 omitted

# reduce 34 omitted

# reduce 35 omitted

# reduce 36 omitted

# reduce 37 omitted

# reduce 38 omitted

# reduce 39 omitted

# reduce 40 omitted

# reduce 41 omitted

# reduce 42 omitted

# reduce 43 omitted

# reduce 44 omitted

# reduce 45 omitted

# reduce 46 omitted

module_eval(<<'.,.,', 'parser.racc', 119)
  def _reduce_47(val, _values, result)
            result = val[0]
      
    result
  end
.,.,

# reduce 48 omitted

# reduce 49 omitted

# reduce 50 omitted

# reduce 51 omitted

# reduce 52 omitted

module_eval(<<'.,.,', 'parser.racc', 123)
  def _reduce_53(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 126)
  def _reduce_54(val, _values, result)
    result = val[0]
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class Parser
  end   # module Rubex
