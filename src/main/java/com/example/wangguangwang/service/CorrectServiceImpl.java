package com.example.wangguangwang.service;

import java.util.HashMap;
import java.util.Map;

public class CorrectServiceImpl implements CorrectService{

    @Override
    public Map<String, String> correct(Map<String, String[]> examinee) {
        int score = 0;

        Map<String, String> result = new HashMap<>();

        String[] examineeName = (String[])examinee.get("name");
        String mapName = "";

        if (examineeName.length > 0) {

            for(int i = 0; i < examineeName.length; i++){
                mapName += examineeName[i];
            }
        }
        result.put("name", mapName);


        String[] examineeId = (String[])examinee.get("id");
        String mapId = "";
        if (examineeId.length > 0) {
            for(int i = 0; i < examineeId.length; i++){
                mapId += examineeId[i];
            }
        }
        result.put("id", mapId);

        String[] examineeTest1 = (String[])examinee.get("test1");
        String mapTest1 = "";
        if (examineeTest1.length > 0) {
            for(int i = 0; i < examineeTest1.length; i++){
                mapTest1 += examineeTest1[i];
            }
        }
        if(mapTest1.equals("B"))     score +=15;
        result.put("test1", mapTest1);

        String[] examineeTest2 = (String[])examinee.get("test2");
        String mapTest2 = "";
        if (examineeTest2.length > 0) {
            for(int i = 0; i < examineeTest2.length; i++){
                mapTest2 += examineeTest2[i];
            }
        }
        if(mapTest2.equals("A"))     score +=15;
        result.put("test2", mapTest2);

        String[] examineeTest3 = (String[])examinee.get("test3");
        String mapTest3 = "";

        if (examineeTest3.length > 0) {
            for(int i = 0; i < examineeTest3.length; i++){
                mapTest3 += examineeTest3[i];
            }
        }
        if(mapTest3.equals("ABD"))     score +=20;
        result.put("test3", mapTest3);



        String[] examineeTest4 = (String[])examinee.get("test4");
        String mapTest4 = "";
        if (examineeTest4.length > 0) {
            for(int i = 0; i < examineeTest4.length; i++){
                mapTest4 += examineeTest4[i];
            }
        }
        if(mapTest4.equals("ABC"))     score +=20;
        result.put("test4", mapTest4);

        String[] examineeTest5 = (String[])examinee.get("test5");
        String mapTest5 = "";
        if (examineeTest5.length > 0) {
            for(int i = 0; i < examineeTest5.length; i++){
                mapTest5 += examineeTest5[i];
            }
        }
        if(mapTest5.equals("错"))     score +=15;
        result.put("test5", mapTest5);

        String[] examineeTest6 = (String[])examinee.get("test6");
        String mapTest6 = "";
        if (examineeTest6.length > 0) {
            for(int i = 0; i < examineeTest6.length; i++){
                mapTest6 += examineeTest6[i];
            }
        }
        if(mapTest6.equals("对"))     score +=15;
        result.put("test6", mapTest6);


        String resultScore=String.valueOf(score);
        result.put("score", resultScore);

        return result;
    }
}
