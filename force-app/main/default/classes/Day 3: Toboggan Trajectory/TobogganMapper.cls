public class TobogganMapper {
    public static Integer countTrees(String input, Integer moveRight, Integer moveDown) {
        Integer numOfTrees = 0;
        List<String> inputMap =new List<String>();
        List<String> mapCube = new List<String>();

        // Prep input, preserve inputMap as the original toboggan map.
        for (String row : input.split('\\n')) {
            mapCube.add(row.substringBefore('\\n'));
            inputMap.add(row.substringBefore('\\n'));
        }

        Integer colPos = 0;
        Integer lastIndex;

        for (Integer i = 0; i < mapCube.size(); i++) {
            if (i != 0 && i - lastIndex != moveDown) {
                continue;
            } else {
                lastIndex = i;
            }

            String row = mapCube[i];

            while ((colPos + 1) > row.length()) {
                row += inputMap[i];
            }

            if (row.substring(colPos, colPos + 1).equals('#')) {
                numOfTrees++;
            }
            
            colPos += moveRight;
        }

        System.debug(numOfTrees);
        return numOfTrees;
    }
}
