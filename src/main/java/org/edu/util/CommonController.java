package org.edu.util;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.edu.service.IF_MemberService;
import org.edu.vo.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

/**
 * CommonController 공통사용(Admin,Home) 컨트롤러
 * @author 김일국
 *
 */
@Controller
public class CommonController {
	
	@Inject
	IF_MemberService memberService;
	
	// 첨부파일의 확장자를 비교해서 이미지인지 일반파일인지 등등 확인하는 리스트변수
	private ArrayList<String> extNameArray = new ArrayList<String>() {
		{
			add("jpeg");
			add("jpg");
			add("gif");
			add("png");
		}
	};
	// 첨부파일 업로드할 경로를 변수값으로 가져옴 servlet-context.xml에 있는 내용.
	@Resource(name="uploadPath")
	private String uploadPath; // 위 uploadPath영역의 값을  uploadPath변수에 저장.

	
	public String getUploadPath() {
		return uploadPath;
	}

	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}
	
	// 파일 업로드 - xml에서 지정한 폴더에 실제파일 저장을 구현한 메서드 (아래)
	public String fileUpload(MultipartFile file) throws IOException {
		String realFileName = file.getOriginalFilename(); // jsp에서 전송한 파일명
		// 폴더에 저장할 PK용 파일명 만들기 (아래)
		UUID uid = UUID.randomUUID(); // 유니크 아이디 생성 Unique ID: 폴더에 저장할 파일명으로 사용.
		String saveFileName = uid.toString() + "." + realFileName.split("\\.");
		// 값.split("정규표현식"); (Regular Expression):realFileName을 .으로 분할해서 배열 변수로 만드는 메서드.
		// 예를 들면, abc.jpg > realFileName[0] = abc, realFileName[1] = jpg 으로 결과가 나옴.		
		// String[] files = new String[] {saveFileName}; // saveFileName 스트링형을 배열변수 files로 형변환.
		byte[] fileData = file.getBytes(); // jsp폼에서 전송된 파일이 fileData변수(메모리)에 저장됨.
		File target = new File(uploadPath, saveFileName); // 파일 저장하기 바로전 설정저장.
		FileCopyUtils.copy(fileData, target); // 실제로 target폴더에 파일로 저장되는 메서드.
		return saveFileName; // 첨부파일이 1개 이상일 수 있기때문에 .(BoardVO save_file_names멤버 변수가 배열형이기 때문에.)
	}
	
	
	//REST-API서비스로 사용할때 @ResponseBody애노테이션으로 json텍스트데이터를 반환함(아래)
	//아래는 Rest-API백엔드단, Ajax(jsp)부분은 Rest-API의 프론트엔드단.
	@RequestMapping(value="/id_check",method=RequestMethod.GET)
	@ResponseBody
	public String id_check(@RequestParam("user_id") String user_id) {
		String result = "0";//아이디 중복값을 체크하는 변수 초기값은 중복값 없음.
		//Rest-API서비스에서는 스프링을 통해서 Ajax로 에러메세지를 받을수 없기 때문에 여기서 에러를 처리해야 합니다. 
		try {
			MemberVO memberVO = memberService.readMember(user_id);
			if(memberVO != null) {//아이디 중복값이 있을 경우
				result = "1";
			}
		} catch (Exception e) {
			// 위 readMember메서드가 에러발생시
			result = e.toString();
		}
		return result;//결과값 0, 1, 에러메세지
	}
}
