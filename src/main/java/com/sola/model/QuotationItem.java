package com.sola.model;

public class QuotationItem {
	
		private Long id;

	    private Long quotationId;

	    private Integer majorItem;

	    private String item;

	    private float unitPrice;

	    private Integer quantity;

	    private float amount;

	    private String remarks;

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public Long getQuotationId() {
			return quotationId;
		}

		public void setQuotationId(Long quotationId) {
			this.quotationId = quotationId;
		}

		public Integer getMajorItem() {
			return majorItem;
		}

		public void setMajorItem(Integer majorItem) {
			this.majorItem = majorItem;
		}

		public String getItem() {
			return item;
		}

		public void setItem(String item) {
			this.item = item;
		}

		public float getUnitPrice() {
			return unitPrice;
		}

		public void setUnitPrice(float unitPrice) {
			this.unitPrice = unitPrice;
		}

		public Integer getQuantity() {
			return quantity;
		}

		public void setQuantity(Integer quantity) {
			this.quantity = quantity;
		}

		public float getAmount() {
			return amount;
		}

		public void setAmount(float amount) {
			this.amount = amount;
		}

		public String getRemarks() {
			return remarks;
		}

		public void setRemarks(String remarks) {
			this.remarks = remarks;
		}



}
