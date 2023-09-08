// a comment - hello_sc.sc
// Scala can be interpreted (REPL on-the-fly compiler) or compiled
// To run on Linux as interpreter: scala hello_sc.sc
// But to compile and run, compile with: scalac hello_sc.sc
//                        then run with: scala  hello_sc
//Note: Executable file is hello_sc.class and is determined by object name
import scala.io.StdIn.readLine
object hello_sc {
    def main (args : Array [String]) : Unit = {
        var mydata = ""
        println ("Hello, World!")
        print ("Enter a line of data: ") ; mydata = readLine ()
        println ("You entered: " + mydata)
    }
}
/* readLine() does not add newline (\n) to string. String concatenation is + char */
