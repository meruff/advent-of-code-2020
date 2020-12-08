@IsTest
private class TobogganMapper_TEST {
    @IsTest
    static void testTobogganMapper() {
        // Act
        Test.startTest();
        Integer numTreesFound = TobogganMapper.countTrees(TreeMapInput.input, 3, 1);
        System.debug(numTreesFound);
        Test.stopTest();
        
        // Assert
        System.assertEquals(164, numTreesFound);
    }

    @IsTest
    static void testTobogganMapperMultipleSlopesExample() {
        // Act
        Test.startTest();
        Integer numTreesFound = (
            TobogganMapper.countTrees(TreeMapInput.example, 1, 1)
            * TobogganMapper.countTrees(TreeMapInput.example, 3, 1)
            * TobogganMapper.countTrees(TreeMapInput.example, 5, 1)
            * TobogganMapper.countTrees(TreeMapInput.example, 7, 1)
            * TobogganMapper.countTrees(TreeMapInput.example, 1, 2)
        );
        System.debug('Total found: ' + numTreesFound);
        Test.stopTest();
        
        // Assert
        System.assertEquals(336, numTreesFound);
    }

    @IsTest
    static void testTobogganMapperMultipleSlopes() {
        // Act
        Test.startTest();
        Long numTreesFound = (
            TobogganMapper.countTrees(TreeMapInput.input, 1, 1)
            * TobogganMapper.countTrees(TreeMapInput.input, 3, 1)
            * TobogganMapper.countTrees(TreeMapInput.input, 5, 1)
            * TobogganMapper.countTrees(TreeMapInput.input, 7, 1)
            * TobogganMapper.countTrees(TreeMapInput.input, 1, 2)
        );
        System.debug('Total found: ' + numTreesFound);
        Test.stopTest();
        
        // Assert
        System.assertEquals(Long.valueOf('5007658656'), numTreesFound);
    }
}
