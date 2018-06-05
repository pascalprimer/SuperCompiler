import AST.AST;
import FrontEnd.Listener.ClassListener;
import FrontEnd.Listener.DeclarationListener;
import FrontEnd.Listener.StatementListener;
import FrontEnd.Parser.CompilerLexer;
import FrontEnd.Parser.CompilerParser;
import IR.IRTranslator;
import IR.RegisterManager;
import NASM.NASMTranslator;
import Optimization.Optimizer;
import Test.A;
import Utility.CompilerError;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

import java.io.*;
import java.lang.*;

public class Main {

	public static void buildAST(InputStream fin) throws Exception {
		CharStream input = CharStreams.fromStream(fin);
		CompilerLexer lexer = new CompilerLexer(input);
		CommonTokenStream tokens = new CommonTokenStream(lexer);
		CompilerParser parser = new CompilerParser(tokens);

		try {
			parser.setErrorHandler(new BailErrorStrategy());
			ParseTree tree = parser.program();
			AST.init();
			ParseTreeWalker walker = new ParseTreeWalker();

			walker.walk(new ClassListener(), tree);
			walker.walk(new DeclarationListener(), tree);
			walker.walk(new StatementListener(), tree);
		} catch (CompilerError compilerError) {
			System.err.println(compilerError.getMessage());
			System.exit(1);
			return;
		} /*catch (Throwable obj) {
			System.err.println("dangerous program!!!");
			System.exit(1);
		}*/
		//System.err.println("Syntax ok!!!");
	}

	public static void buildIR() throws Exception {
		IRTranslator.translate();
		//IRTranslator.print(1);
	}

	public static void optimize() throws Exception {
		Optimizer.optimizer();
		IRTranslator.print(1);
	}

	public static void buildNASM() throws Exception {
		StringBuilder code = NASMTranslator.translate();
		File file= new File("program.asm");
		PrintStream fout = new PrintStream(new FileOutputStream(file));
		fout.print(code.toString());
		//System.out.println(code.toString());
	}

	public static void main(String[] args) throws Exception{
		File file = new File("program.txt");
		InputStream fin = new FileInputStream(file);

		RegisterManager.initialize();
		buildAST(fin);
		buildIR();
		optimize();
		buildNASM();
	}

	public static void testing() {
		//		B tb = new B();
		//		C tc;
		//		A ta = (A) tb;
		//		tc = (C) ta;
		//		System.out.println(tc.a);
	}

}
