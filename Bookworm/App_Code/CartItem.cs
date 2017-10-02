using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CartItem
/// </summary>
public class CartItem
{

    public string Slika { get; set; }
    public string Avtor { get; set; }
    public string Naslov { get; set; }
    public int Kolicina { get; set; }
    public int Cena { get; set; }

    public CartItem()
    {
  
    }
    
    public CartItem(string slika, string avtor, string naslov,int cena)
    {
        Slika = slika;
        Avtor = avtor;
        Naslov = naslov;
        Kolicina = 1;
        Cena = cena;
    }
}