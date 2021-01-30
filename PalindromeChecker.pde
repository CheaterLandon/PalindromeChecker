public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])== true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String word2 = onlyLetters(word);
  String word3 = noSpaces(word2);
  String word4 = noCapitals(word3);
  if(word4.equals(reverse(word4))){
    return true;
  }
  else{
    return false;
  }
}
public String reverse(String sWord){
  String x = "";
  for (int i = sWord.length(); i > 0; i--){
    x = x + sWord.charAt(i - 1);
  }
  return x;
}
public String onlyLetters(String sString){
  String x = "";
  for (int i = 0; i < sString.length(); i++)
    if (Character.isLetter(sString.charAt(i)) == true)
     x = x + sString.substring(i, i+1);
  return x;
}

public String noSpaces(String sWord){
  String x = "";
  for (int i = 0; i < sWord.length(); i++)
    if (!sWord.substring(i, i+1).equals(" "))
      x = x + sWord.substring(i, i+1);
  return x;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
