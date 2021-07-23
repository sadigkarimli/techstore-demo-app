package az.techstore.domain;


import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class Category extends Base implements Serializable {
    private static final long serialVersionUID = -8561769156807474111L;
    private String name;
    private Category parentCategory;
    private Set<Category> subCategory;

    public Category() {
        this.id = 0;
        this.name = "";
        this.parentCategory = null;
        this.subCategory = new HashSet<>();
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Category getParentCategory() {
        return parentCategory;
    }

    public void setParentCategory(Category parentCategory) {
        this.parentCategory = parentCategory;
    }

    public Set<Category> getSubCategory() {
        return subCategory;
    }

    public void setSubCategory(Set<Category> subCategory) {
        this.subCategory = subCategory;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", parentCategory=" + parentCategory +
                ", subCategory=" + subCategory +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                ", status=" + status +
                '}';
    }
}
