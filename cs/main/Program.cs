using System;

namespace main
{
    internal class Program
    {
        static void Main(string[] args)
        {
            var numbers = new int[] { 3, 7, 8, 5, 2, 1, 9, 5, 4 };
            Array<int> numberArray = Array<int>.ofNative(numbers);
            var result = QuickSort.quickSort(numberArray);
            Console.WriteLine(result);
            Console.ReadLine();
        }
    }
}
