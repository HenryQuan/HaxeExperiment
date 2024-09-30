// load main.jar and run the main class
// run this program with the following command
// java -cp main.jar program

import haxe.root.QuickSort;


public class Main {
    public static void main(String[] args) {
        System.out.println("Hello World");
        // pass in an array of integers to be sorted
        var result = QuickSort.quickSort(new int[]{53, 34, 32, 12, 45, 23, 8, 91, 60});
        System.out.println("Sorted Array: " + result);
        // check the type of the result
        System.out.println("Type of result: " + result.getClass().getName());
    }
}
