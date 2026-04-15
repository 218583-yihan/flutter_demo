
const version ='0.1.0' ;
void main(List<String> arguments) {
if (arguments.isEmpty) {
print('Hello,dart');
}else if (arguments.first == 'version'){
print('Dartpedia CLI version $version');
}
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}
