pageextension 50106 AddLocationFieldCard extends "Sales & Receivables Setup"
{
    layout
    {
        addlast(General)
        {
            field("Location Code"; Rec.LocationCode)
            {
                ApplicationArea = all;
                Caption = 'Location Code';
            }
        }
    }
}