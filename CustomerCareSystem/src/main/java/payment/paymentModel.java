package payment;

public class paymentModel {
    private int paymentID;
    private String AccountNumber;
    private String paymentMethod;
    private String expireDate;
    private String cardNo;
    private String securityCode;
    private String total;

    public paymentModel(int paymentID, String AccountNumber, String paymentMethod, String expireDate,
                        String cardNo, String securityCode, String total) {
        this.paymentID = paymentID;
        this.AccountNumber= AccountNumber;
        this.paymentMethod = paymentMethod;
        this.expireDate = expireDate;
        this.cardNo = cardNo;
        this.securityCode = securityCode;
        this.total = total;
    }

    public int getPaymentID() {
        return paymentID;
    }

    public void setPaymentID(int paymentID) {
        this.paymentID = paymentID;
    }

    public String getAccountNumber() {
        return AccountNumber ;
    }

    public void setAccountNumber(String AccountNumber) {
        this.AccountNumber= AccountNumber;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public String getExpireDate() {
        return expireDate;
    }

    public void setExpireDate(String expireDate) {
        this.expireDate = expireDate;
    }

    public String getCardNo() {
        return cardNo;
    }

    public void setCardNo(String cardNo) {
        this.cardNo = cardNo;
    }

    public String getSecurityCode() {
        return securityCode;
    }

    public void setSecurityCode(String securityCode) {
        this.securityCode = securityCode;
    }

    public String gettotal() {
        return total;
    }

    public void settotal(String total) {
        this.total = total;
    }
}
