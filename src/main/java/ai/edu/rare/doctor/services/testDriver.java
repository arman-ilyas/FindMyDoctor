package ai.edu.rare.doctor.services;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * Created by Tim Arman on 20/5/19.
 */
public class testDriver {

  static void findNumber() {
    String firstDate = "17-January-2000";
    String lastDate = "22-February-2000";
    String weekDay = "Monday";

//    String firstDate = "31/12/1998";
    Date date1;
    Date date2;


    if (!weekDay.equals("Saturday") || !weekDay.equals("Sunday")) {

      try {
        date1 = new SimpleDateFormat("dd-MMMM-yyyy").parse(firstDate);
        date2 = new SimpleDateFormat("dd-MMMM-yyyy").parse(lastDate);
        LocalDate startDate = date1.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
        LocalDate endDate = date2.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
        for (LocalDate date = startDate; date.isBefore(endDate); date = date.plusDays(7)){
          String dateToSearch = date.format(DateTimeFormatter.ofPattern("d-MMMM-yyyy"));
//          System.out.println(dateToSearch);
          URL urlForGetRequest = new URL("https://jsonmock.hackerrank.com/api/stocks/search?date="+dateToSearch);
        String readLine = null;
        HttpURLConnection conection = (HttpURLConnection) urlForGetRequest.openConnection();
        conection.setRequestMethod("GET");
        int responseCode = conection.getResponseCode();
        if (responseCode == HttpURLConnection.HTTP_OK) {
          BufferedReader in = new BufferedReader(
              new InputStreamReader(conection.getInputStream()));
          StringBuffer response = new StringBuffer();
          while ((readLine = in.readLine()) != null) {
            response.append(readLine);
          }
          in.close();
          // print result
//          System.out.println("JSON String Result " + response.toString());
//            convert the response to answer, best way to convert to object but for now no time, so fish out the answer from string
          int indexOfOpen = response.indexOf("open");
          int indexOfClose = response.indexOf("close");
          int data = response.indexOf("total");
          String gotData = response.substring(data+7,data+8);
          if(!gotData.equals("0")){
            System.out.println(dateToSearch+" "+response.substring(indexOfOpen+6,indexOfOpen+13)+ " "+response.substring(indexOfClose+7,indexOfClose+14));
          }
//          System.out.println(gotData);
//          System.out.println(dateToSearch+" "+response.substring(indexOfOpen+6,indexOfOpen+12)+ " ");

        } else {
//        System.out.println("GET NOT WORKED");

        }}
      } catch (IOException e) {
        //ignore
      }
      catch (ParseException e) {
      }

    }


  }

  public static void main(String[] args) {
    findNumber();

  }

}
