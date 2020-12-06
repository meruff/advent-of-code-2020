public class ReportRepair {
    public static Integer repair() {
        for (Integer i: ReportRepairInputs.input) {
            for (Integer j: ReportRepairInputs.input) {
                if ((i + j) == 2020) {
                    return i * j;
                }
            }
        }

        return 0;
    }

    public static Integer repairEnhanced() {
        Integer bound;
        List<Integer> input = ReportRepairInputs.input;
        input.sort();

        for (Integer i: input) {
            if (i > 2020) continue;

            bound = 2020 - i;

            for (Integer j = input.size() - 1; j >= 0; j--) {
                if (input[j] < bound) {
                    break;
                } else if ((i + input[j]) == 2020) {
                    return i * input[j];
                }
            }
        }

        return 0;
    }

    public static Integer repair3Numbers() {
        Integer bound;
        Integer secondBound;
        List<Integer> input = ReportRepairInputs.input;
        input.sort();

        for (Integer i: input) {
            if (i > 2020) continue;

            bound = 2020 - i;

            for (Integer j = input.size() - 1; j >= 0; j--) {
                if (i + input[j] >= 2020 || i == input[j]) continue;

                if (input[j] > bound) {
                    break;
                } else {
                    secondBound = 2020 - (i + input[j]);

                    for (Integer k = input.size() - 1; k >= 0; k--) {
                        if (i + input[j] + input[k] > 2020 
                            || i == input[k] 
                            || input[j] == input[k]
                        ) {
                            continue;
                        }

                        if (input[k] < secondBound) {
                            break;
                        } else if ((i + input[j] + input[k]) == 2020) {
                            System.debug(i + ' ' + input[j] + ' ' + input[k]);
                            return i * input[j] * input[k];
                        }
                    }
                }
            }
        }

        return 0;
    }
}
