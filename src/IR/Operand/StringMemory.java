package IR.Operand;

import IR.IRTranslator;
import NASM.NASMTranslator;
import javafx.util.Pair;

public class StringMemory extends Operand {

	public String tag;
	public String string;

	public StringMemory(int id, String string) {
		tag = "__const_str" + String.valueOf(id);
		this.string = string;
	}

	@Override
	public String toString() {
		return tag;
	}

	public Pair<String, Integer> toPrint() {
		StringBuilder code = new StringBuilder();
		code.append("\"");
		int len = 0;
		//\\:92, \":34, \n:10, \t:9
		//System.out.println(string);
		for (int i = 0; i < string.length(); ++i) {
			if (string.charAt(i) == '\\') {
				code.append("\",");
				char next = string.charAt(i + 1);
				switch (next) {
					case '\\':
						code.append(92);
						break;
					case '\"':
						code.append(34);
						break;
					case 'n':
						code.append(10);
						break;
				}
				code.append(",\"");
				++i;
			} else {
				code.append(string.charAt(i));
			}
			++len;
		}
		code.append("\",0");
		return new Pair<String, Integer>(code.toString(), Integer.valueOf(len));
	}

}
