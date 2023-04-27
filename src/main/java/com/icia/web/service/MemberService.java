package com.icia.web.service;

import com.icia.web.dto.MemberDTO;
import com.icia.web.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {

    @Autowired
    private MemberRepository memberRepository;

    public int save(MemberDTO memberDTO){
        int result = memberRepository.save(memberDTO);
        return result;

    }


    public List<MemberDTO> findAll() {
        List<MemberDTO>memberDTOList = memberRepository.findAll();
        if(memberDTOList.size() == 0){
            return null;
        }else{
            return memberDTOList;
        }

    }

    public MemberDTO findById(Long custno) {
        return memberRepository.findById(custno);
    }

    public void update(MemberDTO memberDTO) {
        memberRepository.update(memberDTO);
    }


    public void delete(Long custno) {
        memberRepository.delete(custno);
    }
}
