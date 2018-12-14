package com.project.sp.vo;

import lombok.Data;

@Data
public class PageVO {
    private int startPage; // 첫 번째 페이지 번호
    private int pageCount = 10; // 한번에 보여주는 하단 페이지 번호 개수
    private int endPage; // 페이지 번호
    private int pageStart; // 끝 페이지 (페이징 네비 기준)
    private int pageN;
    private int pageT;
    /**
     * 페이징 생성
     */
    public void makePaging(int pageTotal, int pageNo) {
    	pageN = pageNo;
    	pageT = pageTotal;
        startPage = (((pageN - 1)/pageCount) * pageCount) + 1;
        endPage = startPage + pageCount-1;
        if(endPage>pageT) {
        	endPage = pageT;
        }
        pageStart = (pageN-1)*10;
    }
}
