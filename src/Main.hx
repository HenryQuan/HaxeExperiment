import haxe.Json;
import haxe.Http;

class Main {
	static public function main():Void {
		// var http = new Http("https://raw.githubusercontent.com/wowsinfo/WoWs-Info-Seven/API/json/personal_rating.json");
		// http.onData = function(response:String) {
		// 	var data = Json.parse(response);
		// 	// cast to string
		// 	var time = Std.string(data.time);
		// 	trace(time ?? "No time");
		// };
		// http.request();

		var arr = [33, 10, 55, 71, 29, 1, 90];
		trace("Original array: " + arr);
		QuickSort.quickSort(arr);
		trace("Sorted array: " + arr);
	}
}
