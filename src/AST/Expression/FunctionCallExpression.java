package AST.Expression;

import AST.Expression.ConstantExpression.VoidConstant;
import AST.Symbol.Symbol;
import AST.Symbol.Type;
import AST.Type.*;
import IR.Instruction.FunctionCallInstruction;
import IR.Instruction.Instruction;
import IR.Operand.Operand;
import IR.RegisterManager;
import Utility.CompilerError;

import java.util.ArrayList;
import java.util.List;

public class FunctionCallExpression extends Expression {

	private FunctionType function;
	private List<Expression> parameter;

	//base class function :identifier exp; else: field

	public FunctionCallExpression(FunctionType function, List<Expression> parameter) {
		super("", false, function.getReturnType());
		this.function = function;
		this.parameter = parameter;
	}

//	private static Expression getFromBaseExpression(BaseTypeFieldExpression function, List<Expression> para) {
//		Expression expression = function.expression;
//		String member = function.member;
//		if (expression.returnType == StringType.getInstance()) {
//			if (member.equals("length")) {
//				if (para.size() == 0) {
//					return new FunctionCallExpression(
//							IdentifierExpression.getExpression("__length__"), para
//					);
//				}
//				throw new CompilerError("Parameters not match in string.length()");
//			}
//			if (member.equals("substring")) {
//				if (para.size() == 2
//						&& para.get(0).returnType instanceof IntType
//						&& para.get(1).returnType instanceof IntType) {
//					return new FunctionCallExpression(
//							IdentifierExpression.getExpression("__substring__"), para
//					);
//				}
//				throw new CompilerError("Parameters not match in string.substring(int, int)");
//			}
//			if (member.equals("parseInt")) {
//				if (para.size() == 0) {
//					return new FunctionCallExpression(
//							IdentifierExpression.getExpression("__parseInt__"), para
//					);
//				}
//				throw new CompilerError("Parameters not match in string.parseInt()");
//			}
//			if (member.equals("ord")){
//				if (para.size() == 1 && para.get(0).returnType instanceof IntType) {
//					return new FunctionCallExpression(
//							IdentifierExpression.getExpression("__ord__"), para
//					);
//				}
//				throw new CompilerError("Parameters not match in string.ord(int)");
//			}
//			throw new CompilerError(member + " not exist on string");
//		}
//		if (expression.returnType instanceof ArrayType) {
//			if (member.equals("size")) {
//				if (para.size() == 0) {
//					return new FunctionCallExpression(
//							IdentifierExpression.getExpression("__size__"), para
//					);
//				}
//				throw new CompilerError("Parameters not match in array.size()");
//			}
//			throw new CompilerError(member + " not exist on array");
//		}
//		throw new CompilerError(member + " not found");
//	}

	public static Expression getExpression(Expression function, List<Expression> para) {
//		if (function instanceof BaseTypeFieldExpression) {
//			return getFromBaseExpression((BaseTypeFieldExpression) function, para);
//		}
//		if (!(function instanceof IdentifierExpression
//				&& ((IdentifierExpression) function).getSymbol().getType() instanceof FunctionType)
//				&& !(function instanceof FieldExpression
//				&& ((FieldExpression) function).getMemberSymbol().getType() instanceof  FunctionType)) {
//			throw new CompilerError("Not a function");
//		}
		if (!(function.returnType instanceof FunctionType)) {
			throw new CompilerError(function.returnType.toString() + " not a function");
		}
		if (function instanceof FieldExpression) {
			para.add(0, ((FieldExpression) function).getField());
		} else {
			para.add(0, IdentifierExpression.getExpression("this"));
		}
		List<Symbol> fpara = ((FunctionType) function.returnType).getParameterList(); //para from func
		//System.out.println(para.size() + fpara.size());
		System.out.println(fpara.get(0));
		if (fpara.size() != para.size()) {
			throw new CompilerError("Parameter numbers don't match when function calling");
		}
		for (int i = 0; i < para.size(); ++i) {
			if (!fpara.get(i).getType().compatibleWith(para.get(i).returnType)) {
				throw new CompilerError("Parameter types don't match when function call");
			}
		}
		return new FunctionCallExpression((FunctionType) function.returnType, para);
//		int thisExist = 0;
//		if (fpara.size() > 0 && fpara.get(0).getName().equals("this")) {
//			thisExist = 1;
//		}
//		if (para.size() + thisExist != fpara.size()) {
//			throw new CompilerError("Parameter numbers don't match when function call");
//		}
//		for (int i = 0; i < para.size(); ++i) {
//			//System.out.println(fpara.get(i + thisExist).getType());
//			//System.out.println(para.get(i) == null);
//			if (!fpara.get(i + thisExist).getType().compatibleWith(para.get(i).returnType)) {
//				throw new CompilerError("Parameter types don't match when function call");
//			}
//		}
//		return new FunctionCallExpression(function, para);
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
//		function.translateIR(instructionList);
//		List<Operand> operandList = new ArrayList<>();
//		for (Expression exp: parameter) {
//			exp.translateIR(instructionList);
//			operandList.add(exp.operand);
//		}
//		if (!(returnType instanceof VoidType)) {
//			operand = RegisterManager.getVirtualRegister();
//		}
//		if (function instanceof IdentifierExpression) {
//			instructionList.add(
//					new FunctionCallInstruction(
//							(FunctionType) (((IdentifierExpression) function).getSymbol().getType()),
//							operandList,
//							operand
//					)
//			);
//		} else {
//			instructionList.add(
//					new FunctionCallInstruction(
//							(FunctionType) (((FieldExpression) function).getMemberSymbol().getType()),
//							operandList,
//							operand
//					)
//			);
//		}
	}

}
