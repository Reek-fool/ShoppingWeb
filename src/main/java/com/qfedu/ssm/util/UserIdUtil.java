package com.qfedu.ssm.util;

import java.text.SimpleDateFormat;

public class UserIdUtil {

    public static String creatUserId(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        String format = sdf.format(new java.util.Date());
        System.out.println("111"+format);

        String replace = format.replace("-", "");
        String replace1 = replace.replace(" ", "");
        String replace2 = replace1.replace(":", "");
        System.out.println(replace2);
        return replace2;
    }
}
