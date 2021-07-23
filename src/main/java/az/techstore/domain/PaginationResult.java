package az.techstore.domain;

import java.io.Serializable;
import java.util.List;

public class PaginationResult<T> implements Serializable {
    private static final long serialVersionUID = -3709282537458910933L;
    private int limit;
    private int offset;
    private long total;
    private long filtered;
    private List<T> list;

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }

    public int getOffset() {
        return offset;
    }

    public void setOffset(int offset) {
        this.offset = offset;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public long getFiltered() {
        return filtered;
    }

    public void setFiltered(long filtered) {
        this.filtered = filtered;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    @Override
    public String toString() {
        return "PaginationResult{" +
                "limit=" + limit +
                ", offset=" + offset +
                ", total=" + total +
                ", filtered=" + filtered +
                ", list=" + list +
                '}';
    }
}
