package com.icia.web.controller;

import com.icia.web.dto.MemberDTO;
import com.icia.web.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class MainController {

    @Autowired
    private MemberService memberService;

    @GetMapping("/save")
    public String saveForm(){
        return "save";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute MemberDTO memberDTO, Model model){
        int saveResult= memberService.save(memberDTO);
        model.addAttribute("result",saveResult);
        return "/saveResult";
    }

    @GetMapping("/list")
    public String findAll(Model model){
        // bookService의 findAll메소드를 호출한 결과를 bookDTOList에 담아온다
        List<MemberDTO>memberDTOList = memberService.findAll();

        model.addAttribute("memberList", memberDTOList);
        return "list";
    }

    @GetMapping("/detail")
    public String detail(@RequestParam("custno") Long custno, Model model){
        MemberDTO memberDTO = memberService.findById(custno);
        model.addAttribute("member", memberDTO);
        return "detail";
    }

    //업데이트는 수정화면 출력 요청 한번, 수정처리 요청 한번 (두번 해줘야됨)

    //수정화면 출력용
    @GetMapping("/update")
    public String updateForm(@RequestParam("custno") Long custno, Model model){
        MemberDTO memberDTO = memberService.findById(custno);
        model.addAttribute("member", memberDTO);
        return "update";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute MemberDTO memberDTO){
        memberService.update(memberDTO);
        return "redirect:/detail?custno="+memberDTO.getCustno();
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("custno") Long custno){
        memberService.delete(custno);

        return "redirect:/list";
    }
}
