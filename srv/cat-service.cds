using my.rfq as my from '../db/schema';

service CatalogService {
    entity A_RequestForQuotation       as projection on my.A_RequestForQuotation;
    entity A_RequestForQuotationBidder as projection on my.A_RequestForQuotationBidder;
    entity A_RequestForQuotationItem   as projection on my.A_RequestForQuotationItem;
    entity SupplierQuotation           as projection on my.SupplierQuotation;
    entity SupplierQuotationItem       as projection on my.SupplierQuotationItem;
}
