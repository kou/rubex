# encoding: UTF-8
#--
# This file is automatically generated. Do not modify it.
# Generated by: oedipus_lex version 2.5.0.
# Source: lib/rubex/lexer.rex
#++

class Rubex::Lexer
  require 'strscan'

  SELF              = /self/
  DEF               = /def/
  CFUNC             = /cfunc/
  RETURN            = /return/
  PRINT             = /print/
  IF                = /if/
  ELSE              = /else/
  ELSIF             = /elsif/
  THEN              = /then/
  STATIC_ARRAY      = /StaticArray/
  FOR               = /for/
  WHILE             = /while/
  DO                = /do/
  EACH              = /each/
  TRUE              = /true/
  FALSE             = /false/
  NIL               = /nil/
  STRUCT            = /struct/
  UNION             = /union/
  ALIAS             = /alias/
  LIB               = /lib/
  CLASS             = /class/
  NULL              = /NULL/
  ATTACH            = /attach/
  IDENTIFIER        = /[a-zA-Z_][a-zA-Z_0-9]*/
  LPAREN            = /\(/
  RPAREN            = /\)/
  LSQUARE           = /\[/
  RSQUARE           = /\]/
  NL                = /\n/
  COMMA             = /,/
  SQUOTE            = /'/
  DQUOTE            = /"/
  SCOLON            = /;/
  INTEGER           = /-?\d+/
  FLOAT             = /-?\d+\.\d+/
  DOT               = /\./
  QMARK             = /\?/
  OCTOTHORP         = /#/
  EXPO              = /\*\*/
  EXPOASSIGN        = /\*\*=/
  STAR              = /\*/
  STARASSIGN        = /\*=/
  DIVIDE            = /\//
  DIVIDEASSIGN      = /\/=/
  PLUS              = /\+/
  PLUSASSIGN        = /\+=/
  MINUS             = /\-/
  MINUSASSIGN       = /\-=/
  MODULUS           = /%/
  MODULUSASSIGN     = /%=/
  ASSIGN            = /=/
  NEQ               = /!=/
  EQ                = /==/
  LT                = /</
  LTEQ              = /<=/
  GT                = />/
  GTEQ              = />=/
  ANDOP             = /&&/
  OROP              = /\|\|/
  BANG              = /!/
  BIT_AND           = /&/
  BIT_AND_ASSIGN    = /&=/
  BIT_OR            = /\|/
  BIT_OR_ASSIGN     = /\|=/
  BIT_XOR           = /\^/
  BIT_XOR_ASSIGN    = /\^=/
  BIT_LSHIFT        = /<</
  BIT_LSHIFT_ASSIGN = /<<=/
  BIT_RSHIFT        = />>/
  BIT_RSHIFT_ASSIGN = />>=/
  BIT_NOT           = /~/

  class LexerError < StandardError ; end
  class ScanError < LexerError ; end

  attr_accessor :lineno
  attr_accessor :filename
  attr_accessor :ss
  attr_accessor :state

  alias :match :ss

  def matches
    m = (1..9).map { |i| ss[i] }
    m.pop until m[-1] or m.empty?
    m
  end

  def action
    yield
  end

  def scanner_class
    StringScanner
  end unless instance_methods(false).map(&:to_s).include?("scanner_class")

  def parse str
    self.ss     = scanner_class.new str
    self.lineno = 1
    self.state  ||= nil

    do_parse
  end

  def parse_file path
    self.filename = path
    open path do |f|
      parse f.read
    end
  end

  def location
    [
      (filename || "<input>"),
      lineno,
    ].compact.join(":")
  end

  def next_token

    token = nil

    until ss.eos? or token do
      self.lineno += 1 if ss.peek(1) == "\n"
      token =
        case state
        when nil then
          case
          when text = ss.scan(/'.\'/) then
            action { [:tSINGLE_CHAR, text] }
          when text = ss.scan(/#{FLOAT}/) then
            action { [:tFLOAT, text] }
          when text = ss.scan(/#{INTEGER}/) then
            action { [:tINTEGER, text] }
          when ss.skip(/#{DQUOTE}/) then
            action { @state = :STRING_LITERAL; @string_text = ""; nil }
          when ss.skip(/#{OCTOTHORP}/) then
            action { @state = :COMMENT; nil }
          when text = ss.scan(/#{STATIC_ARRAY}/) then
            action { [:kSTATIC_ARRAY, text] }
          when text = ss.scan(/#{FOR}/) then
            action { [:kFOR, text]    }
          when text = ss.scan(/#{WHILE}/) then
            action { [:kWHILE, text]  }
          when text = ss.scan(/#{TRUE}/) then
            action { [:kTRUE, text]   }
          when text = ss.scan(/#{FALSE}/) then
            action { [:kFALSE, text]  }
          when text = ss.scan(/#{NIL}/) then
            action { [:kNIL, text]    }
          when text = ss.scan(/#{LIB}/) then
            action { [:kLIB, text]    }
          when text = ss.scan(/#{CLASS}/) then
            action { [:kCLASS, text]  }
          when text = ss.scan(/#{NULL}/) then
            action { [:kNULL, text] }
          when text = ss.scan(/fwd/) then
            action { [:kFWD, text] }
          when text = ss.scan(/#{ATTACH}/) then
            action { [:kATTACH, text] }
          when text = ss.scan(/#{DOT}#{EACH}/) then
            action { [:kDOT_EACH, text] }
          when text = ss.scan(/unsigned long long int/) then
            action { [:kDTYPE_ULLINT, text] }
          when text = ss.scan(/unsigned long int/) then
            action { [:kDTYPE_ULINT, text] }
          when text = ss.scan(/unsigned int/) then
            action { [:kDTYPE_UINT, text] }
          when text = ss.scan(/long int/) then
            action { [:kDTYPE_LINT, text] }
          when text = ss.scan(/long long int/) then
            action { [:kDTYPE_LLINT, text] }
          when text = ss.scan(/#{STRUCT}\ /) then
            action { [:kSTRUCT, text] }
          when text = ss.scan(/#{UNION}\ /) then
            action { [:kUNION, text]  }
          when text = ss.scan(/#{ALIAS}\ /) then
            action { [:kALIAS, text]  }
          when text = ss.scan(/:#{IDENTIFIER}/) then
            action { [:tSYMBOL, text] }
          when text = ss.scan(/#{IDENTIFIER}/) then
            action { [:tIDENTIFIER, text] }
          when text = ss.scan(/#{LPAREN}/) then
            action { [:tLPAREN, text] }
          when text = ss.scan(/#{RPAREN}/) then
            action { [:tRPAREN, text] }
          when text = ss.scan(/#{LSQUARE}/) then
            action { [:tLSQUARE, text] }
          when text = ss.scan(/#{RSQUARE}/) then
            action { [:tRSQUARE, text] }
          when text = ss.scan(/#{COMMA}/) then
            action { [:tCOMMA, text] }
          when text = ss.scan(/#{SCOLON}/) then
            action { [:tSCOLON, text] }
          when text = ss.scan(/#{NL}/) then
            action { [:tNL, text] }
          when text = ss.scan(/#{QMARK}/) then
            action { [:tQMARK, text]}
          when text = ss.scan(/#{DOT}/) then
            action { [:tDOT, text]    }
          when text = ss.scan(/#{PLUSASSIGN}/) then
            action { [:tOP_ASSIGN, text]}
          when text = ss.scan(/#{MINUSASSIGN}/) then
            action { [:tOP_ASSIGN, text]}
          when text = ss.scan(/#{STARASSIGN}/) then
            action { [:tOP_ASSIGN, text]}
          when text = ss.scan(/#{DIVIDEASSIGN}/) then
            action { [:tOP_ASSIGN, text]}
          when text = ss.scan(/#{EXPOASSIGN}/) then
            action { [:tOP_ASSIGN, text]}
          when text = ss.scan(/#{MODULUSASSIGN}/) then
            action { [:tOP_ASSIGN, text]}
          when text = ss.scan(/#{PLUS}/) then
            action { [:tPLUS, text]}
          when text = ss.scan(/#{MINUS}/) then
            action { [:tMINUS, text]}
          when text = ss.scan(/#{STAR}/) then
            action { [:tSTAR, text]}
          when text = ss.scan(/#{DIVIDE}/) then
            action { [:tDIVIDE, text]}
          when text = ss.scan(/#{EXPO}/) then
            action { [:tEXPO, text]}
          when text = ss.scan(/#{MODULUS}/) then
            action { [:tMODULUS, text]}
          when text = ss.scan(/#{EXPO}/) then
            action { [:tEXPO, text]}
          when text = ss.scan(/#{EQ}/) then
            action { [:tEQ, text]  }
          when text = ss.scan(/#{NEQ}/) then
            action { [:tNEQ, text]  }
          when text = ss.scan(/#{ASSIGN}/) then
            action { [:tASSIGN, text] }
          when text = ss.scan(/#{BANG}/) then
            action { [:tBANG, text] }
          when text = ss.scan(/#{ANDOP}/) then
            action { [:tANDOP, text] }
          when text = ss.scan(/#{OROP}/) then
            action { [:tOROP, text] }
          when text = ss.scan(/#{BIT_AND_ASSIGN}/) then
            action { [:tOP_ASSIGN, text] }  
          when text = ss.scan(/#{BIT_OR_ASSIGN}/) then
            action { [:tOP_ASSIGN  , text] }
          when text = ss.scan(/#{BIT_XOR_ASSIGN}/) then
            action { [:tOP_ASSIGN , text] }
          when text = ss.scan(/#{BIT_LSHIFT_ASSIGN}/) then
            action { [:tOP_ASSIGN, text] }
          when text = ss.scan(/#{BIT_RSHIFT_ASSIGN}/) then
            action { [:tOP_ASSIGN, text] }
          when text = ss.scan(/#{BIT_AND}/) then
            action { [:tBIT_AND      , text] } 
          when text = ss.scan(/#{BIT_OR}/) then
            action { [:tBIT_OR        , text] }  
          when text = ss.scan(/#{BIT_XOR}/) then
            action { [:tBIT_XOR       , text] }  
          when text = ss.scan(/#{BIT_LSHIFT}/) then
            action { [:tBIT_LSHIFT    , text] }  
          when text = ss.scan(/#{BIT_RSHIFT}/) then
            action { [:tBIT_RSHIFT      , text] }
          when text = ss.scan(/#{BIT_NOT}/) then
            action { [:tBIT_NOT, text] }
          when text = ss.scan(/#{LTEQ}/) then
            action { [:tLTEQ, text] }
          when text = ss.scan(/#{LT}/) then
            action { [:tLT, text] }
          when text = ss.scan(/#{GTEQ}/) then
            action { [:tGTEQ, text] }
          when text = ss.scan(/#{GT}/) then
            action { [:tGT, text] }
          when ss.skip(/^\n\s*$/) then
            # do nothing
          when ss.skip(/\s+/) then
            # do nothing
          else
            text = ss.string[ss.pos .. -1]
            raise ScanError, "can not match (#{state.inspect}) at #{location}: '#{text}'"
          end
        when :STRING_LITERAL then
          case
          when ss.skip(/#{DQUOTE}/) then
            action { @state = nil; return [:tSTRING, @string_text] }
          when text = ss.scan(/[^"\\]/) then
            action { @string_text << text; nil }
          when text = ss.scan(/\\/) then
            action { @state = :STRING_LITERAL_BSLASH; @string_text << text; nil }
          else
            text = ss.string[ss.pos .. -1]
            raise ScanError, "can not match (#{state.inspect}) at #{location}: '#{text}'"
          end
        when :STRING_LITERAL_BSLASH then
          case
          when text = ss.scan(/./) then
            action { @state = :STRING_LITERAL; @string_text << text; nil }
          else
            text = ss.string[ss.pos .. -1]
            raise ScanError, "can not match (#{state.inspect}) at #{location}: '#{text}'"
          end
        when :COMMENT then
          case
          when ss.skip(/./) then
            action { @state = :COMMENT; nil }
          when ss.skip(/\n/) then
            action { @state = nil; [:tNL, "\n"] }
          else
            text = ss.string[ss.pos .. -1]
            raise ScanError, "can not match (#{state.inspect}) at #{location}: '#{text}'"
          end
        else
          raise ScanError, "undefined state at #{location}: '#{state}'"
        end # token = case state

      next unless token # allow functions to trigger redo w/ nil
    end # while

    raise LexerError, "bad lexical result at #{location}: #{token.inspect}" unless
      token.nil? || (Array === token && token.size >= 2)

    # auto-switch state
    self.state = token.last if token && token.first == :state

    token
  end # def next_token
    def do_parse
    end
end # class

   # Rubex::Lexer
