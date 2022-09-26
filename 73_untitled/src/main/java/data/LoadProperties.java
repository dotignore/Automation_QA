package data;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

public class LoadProperties {
    //give this function path of properties file you create (.properties)
    public static Properties productdata= loadProperties("E:\\project\\framework\\dataFiles\\proprty.properties");
   //function read from a file
    public static Properties loadProperties ( String path){
   Properties pro = new Properties();
   //stream for reading file
        try {
            FileInputStream stream= new FileInputStream(path);
            pro.load(stream);
        } catch (FileNotFoundException e) {
           System.out.println("error occurred "+e.getMessage());
        } catch (IOException e) {
            System.out.println("error occured "+e.getMessage());
        }

        return pro;
    }

}
