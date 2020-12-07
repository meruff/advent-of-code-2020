public class PasswordHelper {
    public static Integer verifyPasswords(List<String> passwords) {
        Integer numValid = 0;

        for (String password : passwords) {
            if (isValid(password)) {
                numValid++;
            }
        }

        System.debug('number valid: ' + numValid);

        return numValid;
    }

    public static Boolean isValid(String passwordInput) {
        List<String> input = passwordInput.split(':');
        List<String> reqs = input[0].split(' ');
        List<String> appearance = reqs[0].split('-');

        String password = input[1].trim();
        String requiredChar = reqs[1];
        Integer min = Integer.valueOf(appearance[0]);
        Integer max = Integer.valueOf(appearance[1]);
        Integer found = 0;

        for (String s: password.split('')) {
            if (s.equals(requiredChar)) {
                found++;
            }
        }

        if (found > max || found < min) {
            return false;
        } else {
            return true;
        }
    }

    public static Integer verifyPasswordsCharPositions(List<String> passwords) {
        Integer numValid = 0;

        for (String password : passwords) {
            if (isValidPositions(password)) {
                numValid++;
            }
        }

        System.debug('number valid: ' + numValid);

        return numValid;
    }

    public static Boolean isValidPositions(String passwordInput) {
        List<String> input = passwordInput.split(':');
        List<String> reqs = input[0].split(' ');
        List<String> appearance = reqs[0].split('-');

        String password = input[1].trim();
        String requiredChar = reqs[1];
        Integer pos1 = Integer.valueOf(appearance[0]) - 1;
        Integer pos2 = Integer.valueOf(appearance[1]) - 1;
        Integer found = 0;
        Boolean isValid = false;
        List<String> passSplit = password.split('');
        
        if (passSplit[pos1].equals(requiredChar)
            && passSplit[pos2].equals(requiredChar)
        ) {
            return false;
        } else if (passSplit[pos1].equals(requiredChar)
            || passSplit[pos2].equals(requiredChar)
        ) {
            return true;
        } else {
            return false;
        }
    }
}
