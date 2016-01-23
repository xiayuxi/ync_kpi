package com.ync365.oa.service.properties;

import java.lang.reflect.Field;

import javax.annotation.PostConstruct;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.ync365.oa.bo.PropertiesBo;
import com.ync365.oa.entity.Properties;
import com.ync365.oa.repository.PropertiesDao;

@Component
@Transactional
public class PropertiesService {
    private Logger log = LoggerFactory.getLogger(PropertiesService.class);
    @Autowired
    private PropertiesDao propertiesDao;
    public static Integer EFFICIENCY_SCORE;
    public static Integer LEADER_ASSESSMENT_SCORE;
    public static Integer SATISFACTION_SCORE;
    public static Integer SPECIALTY_SCORE;

    @PostConstruct
    void init() {
        setProperties();
    }

    public void setProperties() {
        String[] strings = { "efficiency_score", "leader_assessment_score", "satisfaction_score", "specialty_score" };
        for (String string : strings) {
            Properties p = propertiesDao.findByName(string);
            if (p != null) {
                System.out.println(p.getName() + " >>>>> " + p.getValue());
                try {
                    Field f = PropertiesService.class.getDeclaredField(string.toUpperCase());
                    f.setAccessible(true);
                    f.set(null, Integer.valueOf(p.getValue()));
                } catch (NoSuchFieldException e) {
                    log.error("PropertiesService -> setProperties", e);
                } catch (SecurityException e) {
                    log.error("PropertiesService -> setProperties", e);
                } catch (NumberFormatException e) {
                    log.error("PropertiesService -> setProperties", e);
                } catch (IllegalArgumentException e) {
                    log.error("PropertiesService -> setProperties", e);
                } catch (IllegalAccessException e) {
                    log.error("PropertiesService -> setProperties", e);
                }
            }
        }

    }

    public Properties findByName(String name) {
        return propertiesDao.findByName(name);
    }

    public Iterable<Properties> findAll() {
        return propertiesDao.findAll();
    }

    public Properties update(Properties entity) {
        return propertiesDao.save(entity);
    }

    public Properties findById(Long id) {
        return propertiesDao.findOne(id);
    }

    public void update(PropertiesBo bo) {
        Properties efficiency = propertiesDao.findOne(bo.getEfficiency().getId());
        efficiency.setValue(bo.getEfficiency().getValue());
        propertiesDao.save(efficiency);
        Properties leader_assessment = propertiesDao.findOne(bo.getLeader_assessment().getId());
        leader_assessment.setValue(bo.getLeader_assessment().getValue());
        propertiesDao.save(leader_assessment);
        Properties satisfaction = propertiesDao.findOne(bo.getSatisfaction().getId());
        satisfaction.setValue(bo.getSatisfaction().getValue());
        propertiesDao.save(satisfaction);
        Properties specialty = propertiesDao.findOne(bo.getSpecialty().getId());
        specialty.setValue(bo.getSpecialty().getValue());
        propertiesDao.save(specialty);
        PropertiesService.SPECIALTY_SCORE = Integer.valueOf(specialty.getValue());
        PropertiesService.EFFICIENCY_SCORE = Integer.valueOf(efficiency.getValue());
        PropertiesService.LEADER_ASSESSMENT_SCORE = Integer.valueOf(leader_assessment.getValue());
        PropertiesService.SATISFACTION_SCORE = Integer.valueOf(satisfaction.getValue());
    }
}
