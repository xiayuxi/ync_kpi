package com.ync365.oa.bo;

import java.util.List;

import com.ync365.oa.entity.PerformanceEvaluation;

public class PerformanceEvaluationBo {
    private List<PerformanceEvaluation> PerformanceEvaluation;

    public List<PerformanceEvaluation> getPerformanceEvaluation() {
        return PerformanceEvaluation;
    }

    public void setPerformanceEvaluation(List<PerformanceEvaluation> performanceEvaluation) {
        PerformanceEvaluation = performanceEvaluation;
    }
}
