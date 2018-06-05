package AST.Expression;

import AST.Expression.ConstantExpression.VoidConstant;
import AST.Symbol.Symbol;
import AST.Symbol.Type;
import AST.Type.*;
import IR.FunctionIR;
import IR.Instruction.FunctionCallInstruction;
import IR.Instruction.Instruction;
import IR.Instruction.MoveInstruction;
import IR.Operand.Operand;
import IR.Operand.VirtualRegister;
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
		/*if (++AST.AST.cnt == 2) {
			AST.AST.cnt = 123123;
		}*/
		if (!(function.returnType instanceof FunctionType)) {
			throw new CompilerError(function.returnType.toString() + " not a function");
		}
		//System.err.println(((FunctionType) (function.returnType)).getFullName());
		if (function instanceof FieldExpression) {
			para.add(0, ((FieldExpression) function).getField());
		} else if (((FunctionType) function.returnType).getClassScope() != null){
			para.add(0, IdentifierExpression.getExpression("this"));
		}
		List<Symbol> fpara = ((FunctionType) function.returnType).getParameterList(); //para from func
		//System.out.println(para.size() + fpara.size());
		//System.out.println(fpara.get(0));
		if (fpara.size() != para.size()) {
			throw new CompilerError("Parameter numbers don't match when function calling");
		}
		for (int i = 0; i < para.size(); ++i) {
			Type fp = fpara.get(i).getType();
			Type p = para.get(i).returnType;
			if (i == 0 && function instanceof FieldExpression && fp == null) {
				continue;
			}
			if (!fp.compatibleWith(p)) {
				//System.out.println(fpara.get(i) + " " + para.get(i).returnType);
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
	public boolean getUseful() {
		return true;
	}

	@Override
	public void dfsUseful(boolean useful) {
		modifyTag = true;
		for (Expression expression: parameter) {
			expression.dfsUseful(true);
		}
	}

	@Override
	public void dfsBuiltOperand(boolean ok) {
		for (Expression expression: parameter) {
			expression.dfsBuiltOperand(ok);
		}
	}

	@Override
	public void translateIR(List<Instruction> instructionList) {
		List<Operand> operandList = new ArrayList<>();
		for (Expression exp: parameter) {
			exp.translateIR(instructionList);
			operandList.add(exp.operand);
		}
		VirtualRegister tmp = null;
		if (!(returnType instanceof VoidType)) {
			tmp = RegisterManager.getVirtualRegister();
			//tmp.sysRegister = "rax";
		}
		for (int i = 0; i < 6 && operandList.size() > 0; ++i) {
			VirtualRegister nowreg = RegisterManager.getVirtualRegister();
			nowreg.sysRegister = RegisterManager.parameterRegisterName.get(i);
			instructionList.add(new MoveInstruction(nowreg, operandList.get(0)));
			operandList.remove(0);
		}
		instructionList.add(new FunctionCallInstruction(function, operandList, tmp));
		if (!(returnType instanceof VoidType)) {
			operand = RegisterManager.getVirtualRegister();
			instructionList.add(new MoveInstruction(operand, tmp));
		}
	}

}
