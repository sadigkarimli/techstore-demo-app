package az.techstore.domain;

public class DataTable {
    private int draw;
    private int start;
    private int length;
    private String search;
    private int sortColumn;
    private String sortDirection;

    private int recordsFiltered;
    private int recordsTotal;
    private Object[][] data;


    public DataTable() {
        this.draw = 0;
        this.start = 0;
        this.length = 0;
        this.start = 0;
        this.sortColumn = 0;
        this.sortDirection = "asc";
        this.search = "";

        this.recordsTotal = 0;
        this.recordsFiltered = 0;
        this.data = null;
    }

    public DataTable(int draw, int start, int length, String search, int sortColumn, String sortDirection) {
        this.draw = draw;
        this.start = start;
        this.length = length;
        this.search = search;
        this.sortColumn = sortColumn;
        this.sortDirection = sortDirection;
    }

    public int getDraw() {
        return draw;
    }

    public void setDraw(int draw) {
        this.draw = draw;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public String getSearch() {
        return search;
    }

    public void setSearch(String search) {
        this.search = search;
    }

    public int getSortColumn() {
        return sortColumn;
    }

    public void setSortColumn(int sortColumn) {
        this.sortColumn = sortColumn;
    }

    public String getSortDirection() {
        return sortDirection;
    }

    public void setSortDirection(String sortDirection) {
        this.sortDirection = sortDirection;
    }

    public int getRecordsFiltered() {
        return recordsFiltered;
    }

    public void setRecordsFiltered(int recordsFiltered) {
        this.recordsFiltered = recordsFiltered;
    }

    public int getRecordsTotal() {
        return recordsTotal;
    }

    public void setRecordsTotal(int recordsTotal) {
        this.recordsTotal = recordsTotal;
    }

    public Object[][] getData() {
        return data;
    }

    public void setData(Object[][] data) {
        this.data = data;
    }
}
