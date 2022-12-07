package aam18_lab4;

public class WatchsAddition {

    private Integer id;
    private String country;
    private String cases;

    public WatchsAddition() {
    }

    public WatchsAddition(String country, String cases) {
        this.country = country;
        this.cases = cases;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCases() {
        return cases;
    }

    public void setCases(String cases) {
        this.cases = cases;
    }

    @Override
    public String toString() {
        return "Addition{" + "id = " + id + ", country = " + country + ", cases = " + cases + '}';
    }
}
