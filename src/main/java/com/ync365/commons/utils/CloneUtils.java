package com.ync365.commons.utils;

import org.apache.commons.beanutils.PropertyUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class CloneUtils {
    private static final Logger logger = LoggerFactory.getLogger(CloneUtils.class);
    
    /**
     * 对象复制
     * 
     * @param from 原对象
     * @param to 目标对象
     */
    public static void cloneObject(Object from, Object to) {
        try {
            PropertyUtils.copyProperties(to, from);
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("对象属性值复制时异常，失败原因，{}",e.getMessage());
            throw new RuntimeException("对象属性值复制时异常，失败原因，" + e.getMessage());
        }
    }
}
