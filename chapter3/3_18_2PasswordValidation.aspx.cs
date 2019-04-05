using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _3_18_2PasswordValidation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string strPassword = txtPassword.Text;
        bool existDigit = false;
        bool existUpperLetter = false;
        bool existLowerLetter = false;
        bool existOtherChar = false;

        if (strPassword.Length < 6)
        {
            args.IsValid = false;
            return;
        }

        for (int i = 0; i < strPassword.Length; i++)
        {
            int ascOfChar = strPassword[i];

            if (ascOfChar >= 48 && ascOfChar <= 57)
                existDigit = true;
            else if (ascOfChar >= 65 && ascOfChar <= 90)
                existUpperLetter = true;
            else if (ascOfChar >= 96 && ascOfChar <= 122)
                existLowerLetter = true;
            else
                existOtherChar = true;
        }

        args.IsValid = existDigit && existUpperLetter && existLowerLetter && existOtherChar;

    }
}