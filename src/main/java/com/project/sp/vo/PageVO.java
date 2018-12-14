package com.project.sp.vo;

import lombok.Data;

@Data
public class PageVO {
    private int startPage; // 첫 번째 페이지 번호
    private int pageCount = 10; // 한번에 보여주는 하단 페이지 번호 개수
    private int endPage; // 페이지 번호
    private int endPageNo; // 끝 페이지 (페이징 네비 기준)
    private int nextPageNo; // 다음 페이지 번호
    private int finalPageNo; // 마지막 페이지 번호
    private int totalCount; // 게시 글 전체 수
 
    /**
     * 페이징 생성
     */
    public void makePaging(int pageTotal, int pageNo) {
        startPage = ((pageNo - 1)/pageCount) * pageCount + 1;
        endPage = startPage + pageCount-1;
        if(endPage>pageTotal) {
        	endPage = pageTotal;
        }
    }
}
