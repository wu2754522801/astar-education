package com.astar.education.utils;

import org.apache.commons.codec.digest.DigestUtils;

import java.util.Random;

/**
 * @author wuzhenyong
 * ClassName:ShortUrlUtil.java
 * date:2024-03-02 01:01
 * Description: 短链接工具
 */
public class ShortUrlUtil {
    // 下面的字符，可以随便打乱，安全性更高
    private static final char[] BASE_62_ARRAY = {
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
            'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
            'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
            'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
            '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'
    };

    public static String shortUrl(String url){
        String md5Url= DigestUtils.md5Hex(url);
        String[] resultUrl=new String[4];
        for (int i=0; i< 4;i++){
            //1.将长网址的md5生成32位签名串,分为4段，每段8个字节;
            String subStr = md5Url.substring(i * 8, i * 8 + 8);
            //2.对这四段循环处理，取8个字节，将他看成16进制串与0x3fffffff(30位1)与作，即超过30位的忽略处理:
            long hexLong= 0x3FFFFFFF & Long.parseLong(subStr, 16);
            StringBuilder outChars= new StringBuilder();
            //3.这30位分成6段，每5位的数字作为字母表的索引取得特定字符，次进行获得6位字符串;
            for (int j = 0; j < 6; j++) {
                long index = 0x0000003D & hexLong;
                outChars.append(BASE_62_ARRAY[(int) index]);
                hexLong = hexLong >> 5;
            }
            resultUrl[i]=outChars.toString();
        }
        //总的md5串可以获得4个6位串;取里面的任意一个就可作为这个长url的短urL地址;如果万一出现重复可以换一个,自行组逻辑
        return resultUrl[new Random().nextInt(4)];
    }
}
