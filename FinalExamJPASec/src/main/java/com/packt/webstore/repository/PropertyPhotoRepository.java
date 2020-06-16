package com.packt.webstore.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.packt.webstore.domain.PropertyPhoto;

@Repository
public interface PropertyPhotoRepository extends CrudRepository<PropertyPhoto, Long>{

}
