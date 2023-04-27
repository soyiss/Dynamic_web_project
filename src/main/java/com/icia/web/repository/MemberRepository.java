package com.icia.web.repository;

import com.icia.web.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public boolean save(MemberDTO memberDTO) {
        try{
            sql.insert("Member.save",memberDTO);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;

        }
    }

    public List<MemberDTO> findAll() {

        return sql.selectList("Member.findAll");
    }

    public MemberDTO findById(Long custno) {
        return sql.selectOne("Member.findById",custno);
    }
    public void update(MemberDTO memberDTO) {
        sql.update("Member.update", memberDTO);
    }


    public void delete(Long custno) {
        sql.delete("Member.delete",custno);
    }
}
