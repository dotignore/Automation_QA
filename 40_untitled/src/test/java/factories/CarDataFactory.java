package factories;

import pojo.CarPojo;

public class CarDataFactory {

    public CarPojo car(){
        CarPojo car = new CarPojo();
        System.out.println(" ---------- factories/Car  ---------- \n");
        return car;
    }
}
