package aam18_lab4;

public class Watchs {

    private Integer id;
    private WatchsAddition watchsAddition;
    private String brand;
    private String mechanism;

    public Watchs() {
    }

    public Watchs(Integer id) {
        this.id = id;
    }

    public Watchs(Integer id, WatchsAddition watchsAddition, String brand, String mechanism) {
        this.id = id;
        this.watchsAddition = watchsAddition;
        this.brand = brand;
        this.mechanism = mechanism;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public WatchsAddition getWatchsAddition() {
        return watchsAddition;
    }

    public void setWatchsAddition(WatchsAddition watchsAddition) {
        this.watchsAddition = watchsAddition;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getMechanism() {
        return mechanism;
    }

    public void setMechanism(String mechanism) {
        this.mechanism = mechanism;
    }

    public String toString() {
        return "Watch = " + id + ", " + watchsAddition + ", brand = " + brand + ", mechanism = " + mechanism;
    }

}
