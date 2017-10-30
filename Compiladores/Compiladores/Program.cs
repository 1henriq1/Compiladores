using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Antlr4.Runtime;

namespace E1
{
    class Program
    {
        static void Main(string[] args)
        {

            AntlrInputStream inputStream = new AntlrInputStream(Console.In);

            Combined1Lexer lexer = new Combined1Lexer(inputStream);


            CommonTokenStream bts = new CommonTokenStream(lexer);
            bts.Fill();
            IToken tk = lexer.NextToken();

            Combined1Parser p = new Combined1Parser(bts);
            p.start();
            while (1 == 1)
            {

            }
        }
    }
}
