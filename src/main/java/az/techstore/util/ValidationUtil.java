package az.techstore.util;

public class ValidationUtil {
    public static boolean isStringAlphabet(String str)
    {
        return str.matches("^[a-zA-Z]*$");
    }
}
