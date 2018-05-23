package IR.Operand;

import IR.IRTranslator;

public class StringMemory extends Operand {

	public String tag;

	public StringMemory(String str) {
		tag = "_const_string@" + str;
	}

}
