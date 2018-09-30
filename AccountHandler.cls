//Punto uno: Definisco la classe chiamata AccountHandler
public class AccountHandler
{

    //Punto due: Definisco un metodo statico chiamato insertNewAccount
    //Punto tre: Definisco il parametro tra le parentesi tonde chiamato accountName di tipo String 
    //(Scelgo io il nome del parametro in modo da usarlo nella funzione)
    //Account dopo static indica il tipo di oggetto che ritorno
    public static Account insertNewAccount(String accountName)
    {
        //Definisco l'oggetto account che dovrà essere inserito e che verrà restituito dalla funzione
        Account result = new Account();

        try
        {
            //valorizzo il campo name dell'oggetto account 
            result.Name = accountName;

            Database.insert(result); //Sto inserendo un record nel DB di tipo account con Name = accountName
            
        }catch(Exception e)
        {
            //se l'accountName era vuoto setta a null la variabile da restituire come parametro
            result = null;
        }

        //restituisco l'account in modo da porterlo utilizzare in altri punti del codice. 
        return result;
    }
}