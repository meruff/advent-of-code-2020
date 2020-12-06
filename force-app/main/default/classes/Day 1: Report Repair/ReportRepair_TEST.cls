@IsTest
private class ReportRepair_TEST {
    @IsTest
    static void testRepairReports() {
        // Act
        Test.startTest();
        Integer result = ReportRepair.repair();
        System.debug(Limits.getCpuTime());
        Test.stopTest();

        // Assert
        System.assertEquals(928896, result);
    }

    @IsTest
    static void testRepairReportsEnhanced() {
        // Act
        Test.startTest();
        Integer result = ReportRepair.repairEnhanced();
        System.debug(Limits.getCpuTime());
        Test.stopTest();

        // Assert
        System.assertEquals(928896, result);
    }

    @IsTest
    static void testRepairReports3Numbers() {
        // Act
        Test.startTest();
        Integer result = ReportRepair.repair3Numbers();
        System.debug(result);
        System.debug(Limits.getCpuTime());
        Test.stopTest();

        // Assert
        System.assertEquals(295668576, result);
    }
}
