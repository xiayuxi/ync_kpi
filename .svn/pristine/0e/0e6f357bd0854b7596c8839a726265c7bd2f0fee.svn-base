package com.ync365.oa.service.performanceevaluation;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;

import com.ync365.oa.repository.BaseTest;
import com.ync365.oa.service.pecontroller.PeControllerService;

public class PeControllerServiceTest extends BaseTest {
    @Autowired
    PeControllerService peControllerService;

    @Test
    public void test() {
        Boolean b = peControllerService.checkIsProcessed(2l,"平台研发MT", "2015-11");
        //Assert.isTrue(b==false);
        peControllerService.updateState("平台研发MT", "2015-11");
    }

}
