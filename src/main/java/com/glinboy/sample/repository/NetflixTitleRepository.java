package com.glinboy.sample.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.glinboy.sample.entity.NetflixTitle;

public interface NetflixTitleRepository extends JpaRepository<NetflixTitle, Long> {

}
