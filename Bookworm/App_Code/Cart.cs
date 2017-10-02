using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Cart
/// </summary>
public class Cart
{

    public List<CartItem> Items { get; set; }

    public Cart()
    {
        Items = new List<CartItem>();
    }


    public void Add(CartItem item)
    {
        Items.Add(item);
    }

    
    public void Remove(int rowID)
    {
        Items.RemoveAt(rowID);
    }

    public void Update(int rowID, int Quantity)
    {
        if(Quantity > 0 && Quantity <= 10)
        {
            Items[rowID].Kolicina = Quantity;
        }else if (Quantity > 10)
        {
            Items[rowID].Kolicina = 10;
        }else
        {
            Remove(rowID);
        }
    }

    public int Total {
        get
        {
            if(Items == null)
            {
                return 0;
            }else
            {
                int total = 0;
                WebService webService = new WebService();
                foreach(CartItem item in Items)
                {
                    total = webService.addToSum(item.Cena, item.Kolicina, total);
                }
                return total;
            }
        }
    }
}