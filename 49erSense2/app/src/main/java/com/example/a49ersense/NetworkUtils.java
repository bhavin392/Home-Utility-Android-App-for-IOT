package com.example.a49ersense;

import android.net.Uri;
import android.util.Log;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Scanner;

public class NetworkUtils {
    private final static  String WeatherDB_Base_URL=
            "https://dataservice.accuweather.com/forecasts/v1/daily/5day/349818";
    private final static  String API_KEY="m7vfPTB8UBVhE3GZwJLubGuxy4CNSzbr";
    private final static  String PARAM_API_KEY="apikey";
    private static final String TAG="hello";
    public static URL buildURLForWeather(){
        Uri builtUri = Uri.parse(WeatherDB_Base_URL).buildUpon()
                .appendQueryParameter(PARAM_API_KEY,API_KEY)
                .build();
        URL url = null;
        try {
            url= new URL(builtUri.toString());
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
        Log.d(TAG,"buildUrlForWeather:url:"+url);
        return url;
    }
    public  static String getResponseFromHttpUrl(URL url)throws IOException{
        HttpURLConnection httpURLConnection =(HttpURLConnection) url.openConnection();
        try {
            InputStream in= httpURLConnection.getInputStream();
            Scanner scanner = new Scanner(in);
            scanner.useDelimiter("\\A");

            boolean hasInput = scanner.hasNext();
            if(hasInput){
                return scanner.next();
            }else {
                return null;
            }
        }finally {
            httpURLConnection.disconnect();
        }
    }
}
