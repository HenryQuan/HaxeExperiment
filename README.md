# Haxe Playground
Experiments with the Haxe programming language, the "dream" language that can compile to many other languages including JavaScript, C++, Java, Python, PHP, Lua, and [more](https://haxe.org/documentation/introduction/compiler-targets.html).

OK, let's be honest. This language is not playing around. Intensive knowledge of all the target languages is required to run it anywhere. Haxe itself may seem similar to C# or Java, but it requires manual markings like `@:keep` or `@:expose`. There are times where you need to check for a specific language and may end up with lots of `#if` statements.

I believe Tier 1 & 2 languages like JavaScript, C++, JVM and Lua are quite fine. Tier 3 ones may work but with libraries, probably not so much. I have tried Python & C# with HTTP requests and didn't work.

For C#, you can potentially use [IKVM.NET](https://github.com/ikvmnet/ikvm) to run the JAR file since it is still Java 8. From there, things get interesting because you can also use Java 8 on Android with Kotlin. GraalVM is also a thing where you can run Python, Ruby, R, JavaScript and C side by side with Java.

This is definitely something to look into when I have the time. For now, I guess I will just keep working with Kotlin, JavaScript and maybe Flutter.

See related projects:
- https://github.com/fusionlanguage/fut
- https://github.com/immunant/c2rust
- https://github.com/erg-lang/erg
- https://github.com/LingDong-/wax
- More https://github.com/topics/transpiler
