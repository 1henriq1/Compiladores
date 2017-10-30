grammar Combined1;

/*
 * Parser Rules
 */
options {
    language=CSharp3;
	namespace=E1;
}

//@parser::
@header{
	using System;
	using System.Collections.Generic;
	using System.Linq;
	using System.Text;
	using System.Threading.Tasks;
	using Antlr4.Runtime;
	}
@members{
	public static String x = "";
	public static String PegaValor(IToken token){
		return token.Text;
	}
}


start: gramm EOF 
	 ;
gramm: e;

e: e OPS t{
	x = PegaValor($OPS);
	if(x == "+")
		Console.WriteLine("add");
	else if(x == "-")
		Console.WriteLine("sub");
} | t;
t: t OPX f{
x = PegaValor($OPX);
if(x == "*")
Console.WriteLine("mul");
else if(x == "/")
Console.WriteLine("div");
}| f;
f: OPEN e CLOSE | ID {
Console.WriteLine("push " + PegaValor($ID));
}| OPS ID {Console.WriteLine("push " + PegaValor($OPS) + PegaValor($ID)); };


/*
 * Lexer Rules
 */

OPEN: '(';

CLOSE: ')';

ID: [0-9]+[.0-9]*;

OPX: ('*' | '/');

OPS: ('+' | '-');

SPACE: (' '| '\t' | '\n' | '\r')+ -> skip; 
