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

    public boolean save(MemberDTO memberDTO) {
       return memberRepository.save(memberDTO);
    }

    public List<MemberDTO> findAll() {
        return memberRepository.findAll();
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
