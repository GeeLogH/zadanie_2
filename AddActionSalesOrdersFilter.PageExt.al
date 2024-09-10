pageextension 50107 AddActionSalesOrdersFilter extends "Sales Order List"
{
    actions
    {
        addlast("F&unctions")
        {
            action(FilterByLocationCode)
            {
                ApplicationArea = All;
                Caption = 'Filter by Location Code';
                Image = Filter;
                trigger OnAction()
                var
                    setup: Record "Sales & Receivables Setup";
                    locationCode: Code[10];
                begin
                    setup.get();
                    locationCode := setup.LocationCode;
                    Rec.SetFilter("Location Code", locationCode);
                end;
            }
        }
    }
}