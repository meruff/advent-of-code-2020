@IsTest
private class PasswordHelper_TEST {
    @IsTest
    static void testPasswordVerify() {
        // Act
        Test.startTest();
        Integer numValid = PasswordHelper.verifyPasswords(PasswordInputs.inputs);
        System.debug('CPU Time: ' + Limits.getCpuTime());
        Test.stopTest();
        
        // Assert
        System.assertEquals(515, numValid);
    }

    @IsTest
    static void testPasswordVerifyPositions() {
        // Act
        Test.startTest();
        Integer numValid = PasswordHelper.verifyPasswordsCharPositions(PasswordInputs.inputs);
        System.debug('CPU Time: ' + Limits.getCpuTime());
        Test.stopTest();
        
        // Assert
        System.assertEquals(711, numValid);
    }
}
