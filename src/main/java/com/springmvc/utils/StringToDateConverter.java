package com.springmvc.utils;

import org.springframework.core.convert.converter.Converter;

import java.text.*;
import java.util.Date;

public class StringToDateConverter implements Converter<String, Date> {

    @Override
    public Date convert(String s) {
        if (s==null){
            throw  new RuntimeException("没有传入参数！");
        }
        DateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
        try {
            return dateFormat.parse(s);
        } catch (Exception e) {
            throw  new RuntimeException("数据类型转换出错！");
        }
    }
}
