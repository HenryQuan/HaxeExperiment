#if java
import java.NativeArray;
#end

@:keep
@:expose
class QuickSort {
	#if java
	// convert the Java array to a Haxe array, other languages don't need this
	public static function quickSort(arr:NativeArray<Int>):Array<Int> {
		var haxeArray = new Array<Int>();
		for (i in 0...arr.length) {
			haxeArray.push(arr[i]);
		}
		quickSortHelper(haxeArray, 0, (arr.length - 1));
		return haxeArray;
	}
	#else
	public static function quickSort(arr:Array<Int>):Array<Int> {
		quickSortHelper(arr, 0, (arr.length - 1));
		return arr;
	}
	#end

	private static function quickSortHelper(arr:Array<Int>, low:Int, high:Int):Void {
		if (low < high) {
			var pi = partition(arr, low, high);
			quickSortHelper(arr, low, pi - 1); // Sort elements before partition
			quickSortHelper(arr, pi + 1, high); // Sort elements after partition
		}
	}

	private static function partition(arr:Array<Int>, low:Int, high:Int):Int {
		var pivot = arr[high]; // Choosing the last element as pivot
		var i = low - 1; // Index of the smaller element

		for (j in low...high) {
			if (arr[j] < pivot) {
				i++;
				// Swap arr[i] and arr[j]
				swap(arr, i, j);
			}
		}
		// Swap the pivot element to its correct position
		swap(arr, i + 1, high);
		return i + 1;
	}

	private static function swap(arr:Array<Int>, i:Int, j:Int):Void {
		var temp = arr[i];
		arr[i] = arr[j];
		arr[j] = temp;
	}
}
