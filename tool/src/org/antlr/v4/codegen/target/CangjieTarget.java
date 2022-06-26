package org.antlr.v4.codegen.target;

import org.antlr.v4.codegen.CodeGenerator;
import org.antlr.v4.codegen.Target;
import org.stringtemplate.v4.STGroup;
import org.stringtemplate.v4.StringRenderer;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

public class CangjieTarget extends Target {
	/**
	 * The Cangjie target can cache the code generation templates.
	 */
	private static final ThreadLocal<STGroup> targetTemplates = new ThreadLocal<>();

	protected static final HashSet<String> reservedWords = new HashSet<>(Arrays.asList(
			"abstract", "as", "break", "Bool", "case", "catch", "class", "continue", "Char",
			"do", "else", "enum", "extend", "false", "finally", "for", "foreign", "from",
			"func", "Float16", "Float32", "Float64", "if", "import", "in", "init", "interface",
			"is", "Int8", "Int16", "Int32", "Int64", "IntNative", "let", "macro", "match",
			"mut", "Nothing", "open", "operator", "override", "package", "private", "prop",
			"protected", "public", "quote", "record", "redef", "return", "spawn", "static",
			"super", "synchronized", "this", "throw", "true", "try", "type", "This", "unsafe",
			"UInt8", "UInt16", "UInt32", "UInt64", "UIntNative", "Unit", "var", "where",
			"while", "main",
			// misc
			"rule", "parserRule"
	));

	public CangjieTarget(CodeGenerator gen) {
		super(gen);
	}

	@Override
	public Set<String> getReservedWords() {
		return reservedWords;
	}

	@Override
	protected STGroup loadTemplates() {
		STGroup result = targetTemplates.get();
		if (result == null) {
			result = super.loadTemplates();
			result.registerRenderer(String.class, new CJStringRenderer(), true);
			targetTemplates.set(result);
		}

		return result;
	}

	protected static class CJStringRenderer extends StringRenderer {

		@Override
		public String toString(Object o, String formatString, Locale locale) {
			return super.toString(o, formatString, locale);
		}
	}

	@Override
	public boolean isATNSerializedAsInts() {
		return true;
	}
}
