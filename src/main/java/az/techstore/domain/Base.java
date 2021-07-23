package az.techstore.domain;

import java.io.Serializable;
import java.time.LocalDateTime;

public class Base implements Serializable {

    private static final long serialVersionUID = 4158517056850788659L;
    protected long id;
    protected LocalDateTime insertDate;
    protected LocalDateTime lastUpdate;
    protected int status;

    public Base() {
        this.id = 0;
        this.status = 1;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public LocalDateTime getInsertDate() {
        return insertDate;
    }

    public void setInsertDate(LocalDateTime insertDate) {
        this.insertDate = insertDate;
    }

    public LocalDateTime getLastUpdate() {
        return lastUpdate;
    }

    public void setLastUpdate(LocalDateTime lastUpdate) {
        this.lastUpdate = lastUpdate;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
