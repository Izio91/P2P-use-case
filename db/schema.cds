namespace my.rfq;

entity A_RequestForQuotation {
  key RequestForQuotation            : String(10);
      CompanyCode                    : String(4);
      PurchasingDocumentCategory     : String(1);
      PurchasingDocumentType         : String(4);
      CreatedByUser                  : String(12);
      CreationDate                   : Date;
      Language                       : String(2);
      PurchasingOrganization         : String(4);
      PurchasingGroup                : String(3);
      DocumentCurrency               : String(3);
      IncotermsClassification        : String(3);
      IncotermsTransferLocation      : String(28);
      IncotermsVersion               : String(4);
      IncotermsLocation1             : String(70);
      IncotermsLocation2             : String(70);
      PaymentTerms                   : String(4);
      CashDiscount1Days              : Decimal(3);
      CashDiscount2Days              : Decimal(3);
      CashDiscount1Percent           : Decimal(5, 3);
      CashDiscount2Percent           : Decimal(5, 3);
      NetPaymentDays                 : Decimal(3);
      RFQPublishingDate              : Date;
      QuotationLatestSubmissionDate  : Date;
      BindingPeriodValidityEndDate   : Date;
      TargetAmount                   : Decimal(15, 2);
      CorrespncInternalReference     : String(12);
      RFQLifecycleStatus             : String(2);
      RequestForQuotationName        : String(40);
      QuotationEarliestSubmsnDate    : Date;
      LatestRegistrationDate         : Date;
      FollowOnDocumentCategory       : String(1);
      PurgDocFollowOnDocumentType    : String(4);
      PurContrValidityStartDate      : Date;
      PurContrValidityEndDate        : Date;
      PurchasingDocumentDeletionCode : String(1);
      IsEndOfPurposeBlocked          : String(1);

      to_RequestForQuotationBidder   : Association to many A_RequestForQuotationBidder
                                         on to_RequestForQuotationBidder.RequestForQuotation = RequestForQuotation;

      to_RequestForQuotationItem     : Association to many A_RequestForQuotationItem
                                         on to_RequestForQuotationItem.RequestForQuotation = RequestForQuotation;
}

entity A_RequestForQuotationBidder {
  key RequestForQuotation : String(10);
  key PartnerCounter      : String(3);
      PartnerFunction     : String(2);
      Supplier            : String(10);

}

entity A_RequestForQuotationItem {
  key RequestForQuotation            : String(10);
  key RequestForQuotationItem        : String(5);
      PurchasingDocumentCategory     : String(1);
      PurchasingDocumentItemText     : String(40);
      Material                       : String(40);
      ProductTypeCode                : String(2);
      ManufacturerMaterial           : String(40);
      ManufacturerPartNmbr           : String(40);
      Manufacturer                   : String(10);
      MaterialGroup                  : String(9);
      Plant                          : String(4);
      ManualDeliveryAddressID        : String(10);
      ReferenceDeliveryAddressID     : String(10);
      AddressID                      : String(10);
      ItemDeliveryAddressID          : String(10);
      IncotermsClassification        : String(3);
      IncotermsTransferLocation      : String(28);
      IncotermsLocation1             : String(70);
      IncotermsLocation2             : String(70);
      ScheduleLineDeliveryDate       : Date;
      ScheduleLineOrderQuantity      : Decimal(13, 3);
      PerformancePeriodStartDate     : Date;
      PerformancePeriodEndDate       : Date;
      OrderQuantityUnit              : String(3);
      OrderQuantityUnitISOCode       : String(3);
      OrderItemQtyToBaseQtyNmrtr     : Decimal(5);
      OrderItemQtyToBaseQtyDnmntr    : Decimal(5);
      BaseUnit                       : String(3);
      PurchaseRequisition            : String(10);
      PurchaseRequisitionItem        : String(5);
      PurchasingInfoRecordUpdateCode : String(1);
      PurchasingDocumentItemCategory : String(1);
      LastChangeDateTime             : Timestamp;
}

entity SupplierQuotation {
  key SupplierQuotation              : String(10);
      CompanyCode                    : String(4);
      PurchasingDocumentCategory     : String(1);
      PurchasingDocumentType         : String(4);
      Supplier                       : String(10);
      CreatedByUser                  : String(12);
      CreationDate                   : Date;
      Language                       : String(2);
      DocumentCurrency               : String(3);
      IncotermsClassification        : String(3);
      IncotermsTransferLocation      : String(28);
      IncotermsVersion               : String(4);
      IncotermsLocation1             : String(70);
      IncotermsLocation2             : String(70);
      PaymentTerms                   : String(4);
      CashDiscount1Days              : Decimal(3);
      CashDiscount2Days              : Decimal(3);
      CashDiscount1Percent           : Decimal(5, 3);
      CashDiscount2Percent           : Decimal(5, 3);
      NetPaymentDays                 : Decimal(3);
      PricingProcedure               : String(6);
      PurchasingOrganization         : String(4);
      PurchasingGroup                : String(3);
      PurchasingDocumentOrderDate    : Date;
      AbsoluteExchangeRate           : Decimal(9, 5);
      ExchRateIsIndirectQuotation    : Boolean;
      EffectiveExchangeRate          : Decimal(12, 5);
      ExchangeRateIsFixed            : Boolean;
      PurContrValidityStartDate      : Date;
      PurContrValidityEndDate        : Date;
      IsEndOfPurposeBlocked          : String(1);
      PurchasingDocumentDeletionCode : String(1);
      RequestForQuotation            : String(10);
      SupplierQuotationExternalID    : String(10);
      QuotationSubmissionDate        : Date;
      QuotationLatestSubmissionDate  : Date;
      BindingPeriodValidityEndDate   : Date;
      QtnLifecycleStatus             : String(2);
      FollowOnDocumentCategory       : String(1);
      PurgDocFollowOnDocumentType    : String(4);
      _SupplierQuotationItem         : Association to many SupplierQuotationItem
                                         on _SupplierQuotationItem.SupplierQuotation = SupplierQuotation;
}

entity SupplierQuotationItem {
  key SupplierQuotation              : String(10);
  key SupplierQuotationItem          : String(5);

      PurchasingDocumentCategory     : String(1);
      PurchasingDocumentItemText     : String(40);
      Material                       : String(40);
      ProductTypeCode                : String(2);
      ManufacturerMaterial           : String(40);
      SupplierMaterialNumber         : String(35);
      ManufacturerPartNmbr           : String(40);
      Manufacturer                   : String(10);
      MaterialGroup                  : String(9);
      Plant                          : String(4);
      ManualDeliveryAddressID        : String(10);
      ReferenceDeliveryAddressID     : String(10);
      AddressID                      : String(10);
      ItemDeliveryAddressID          : String(10);
      IncotermsClassification        : String(3);
      IncotermsTransferLocation      : String(28);
      IncotermsLocation1             : String(70);
      IncotermsLocation2             : String(70);
      ScheduleLineDeliveryDate       : Date;
      ScheduleLineOrderQuantity      : Decimal(13, 3);
      AwardedQuantity                : Decimal(13, 3);
      PerformancePeriodStartDate     : Date;
      PerformancePeriodEndDate       : Date;
      OrderPriceUnit                 : String(3);
      OrderPriceUnitToOrderUnitNmrtr : Decimal(5);
      OrdPriceUnitToOrderUnitDnmntr  : Decimal(5);
      OrderQuantityUnit              : String(3);
      OrderItemQtyToBaseQtyNmrtr     : Decimal(5);
      OrderItemQtyToBaseQtyDnmntr    : Decimal(5);
      PurgDocPriceDate               : Date;
      BaseUnit                       : String(3);
      NetAmount                      : Decimal(13, 2);
      GrossAmount                    : Decimal(13, 2);
      EffectiveAmount                : Decimal(13, 2);
      NetPriceAmount                 : Decimal(11, 2);
      NetPriceQuantity               : Decimal(5);
      DocumentCurrency               : String(3);
      PurchaseRequisition            : String(10);
      PurchaseRequisitionItem        : String(5);
      RequestForQuotation            : String(10);
      RequestForQuotationItem        : String(5);
      PurchasingInfoRecordUpdateCode : String(1);
      PurchasingInfoRecord           : String(10);
      PurchasingDocumentItemCategory : String(1);
      LastChangeDateTime             : Timestamp;
}


entity AgentsEvaluation {
  key RequestForQuotation   : String(10);
  key SupplierQuotation     : String(10);
  key SupplierQuotationItem : String(5);
  key Agent                 : String(255);
      Comments              : LargeString;
}
