package com.liu.translation;

/**
 * Created by anybody on 2017/1/7.
 */
public class Translate {
    private String from;
    private String to;
    private TransResult[] trans_result;

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public TransResult[] getTrans_result() {
        return trans_result;
    }

    public void setTrans_result(TransResult[] trans_result) {
        this.trans_result = trans_result;
    }
}
