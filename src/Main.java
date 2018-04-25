import AST.AST;
import FrontEnd.Listener.ClassListener;
import FrontEnd.Listener.DeclarationListener;
import FrontEnd.Listener.StatementListener;
import FrontEnd.Parser.CompilerLexer;
import FrontEnd.Parser.CompilerParser;
import Utility.CompilerError;
import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.BailErrorStrategy;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.lang.*;

public class Main {

	public static void buildAST(InputStream fin) throws Exception {
		ANTLRInputStream input = new ANTLRInputStream(fin);
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
			System.out.println(compilerError.getMessage());
			System.exit(1);
		}
	}

	public static void main(String[] args) throws Exception{
		File file = new File("./Test/program");
		InputStream fin = new FileInputStream(file);
		buildAST(fin);
	}

}
