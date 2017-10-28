﻿using System;
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

            GrammLexer lexer = new GrammLexer(inputStream);


            CommonTokenStream bts = new CommonTokenStream(lexer);
            bts.Fill();
            IToken tk = lexer.NextToken();

            GrammParser p = new GrammParser(bts);
            p.start();
            while (1 == 1)
            {

            }
        }
    }
}