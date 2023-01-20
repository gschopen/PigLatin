public void setup() 
{
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord){
    for(int i = 0; i < sWord.length(); i++)
       if(sWord.charAt(i) == 'a' || sWord.charAt(i) == 'e' || 
          sWord.charAt(i) == 'i' || sWord.charAt(i) == 'o' || sWord.charAt(i) == 'u')
      return i;
  return -1;


//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1


}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  if(findFirstVowel(sWord) == 0){
   return sWord + "way";
  }
  if(sWord.substring(0,2).equals("qu")){
    sWord = sWord.substring(2);
     return sWord+"quay";
  }
  if(findFirstVowel(sWord) > 0){
    int i = findFirstVowel(sWord);
    String chub = sWord.substring(0,i);
   sWord = sWord.substring(i);
   return sWord + chub + "ay";
  }
  else
  {
    return "ERROR!";
  }
}
