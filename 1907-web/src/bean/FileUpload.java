package bean;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.*;

public class FileUpload {
	String upload = "C:/source/1907-web/WebContent/upload/";
	String tempDir = "c:/temp2/";
	
	int maxSize = 1024*1024*50;
	HttpServletRequest req;
	HttpServletResponse resp;
	
	SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd");
	
	public FileUpload(HttpServletRequest req,HttpServletResponse resp) {
		this.req = req;
		this.resp = resp;
	}
	public boolean uploadFormCheck() {//폼태그에 앵크타입이 정상적으로 있냐 없느냐?
		boolean flag = ServletFileUpload.isMultipartContent(req);
		return flag;
	}
	public MemberVo2 uploading() {
		MemberVo2 vo = new MemberVo2();
		List<MemberPhoto> photoList = new ArrayList<MemberPhoto>();
		DiskFileItemFactory factory = new DiskFileItemFactory();//파일을 업로드하기위한 파일을 만들다
		factory.setSizeThreshold(4096);//파일을 업로드할때 메모리의 크기 (버퍼)
		factory.setRepository(new File(tempDir));//파일이 업로드가되면서 임시로 저장되는 공간
		
		ServletFileUpload sf = new ServletFileUpload(factory);//실제로 파일을 업로드하는 클래스
		sf.setHeaderEncoding("utf-8");
		sf.setFileSizeMax(maxSize);
		
		try {
			List<FileItem> list = sf.parseRequest(req);//from태그의 input태그들을 파싱해서 처리
			for(FileItem fi:list) {
				String v = fi.getString("utf-8");
				String k = fi.getFieldName();//이름값
				
				if(fi.isFormField()) {//인풋타입이 파일이 아닌가?
					switch(k) {
					case "mId"://필드네임이 혹시 mId이냐
						vo.setmId(v);
						break;
					case "pwd":
						vo.setPwd(v);
						break;
					case "mName":
						vo.setmName(v);
						break;
					case "rDate":
						vo.setrDate(sdf.parse(v));
						break;
					case "grade":
						vo.setGrade(Integer.parseInt(v));
						break;
					case "findStr":
						req.setAttribute("findStr", v);
						break;
					case "nowPage":
						req.setAttribute("nowPage", v);
						break;
					}
				}else {
					if(fi.getSize()>0) {
						String f = fi.getName();
						String sysfile = new Date().getTime()+"-"+f;//db에저장되는 사진이름 중복이 없게하기위해 파일명에 현재시간을 롱타입으로바꿔서 저장하겠다
						MemberPhoto p = new MemberPhoto();
						p.setOriFile(f);
						p.setSysFile(sysfile);
						photoList.add(p);//n번돌때마다 파일 뭐시기를 담아서 리퀘스트를 하겟죠?
						
						File file = new File(upload + sysfile);
						fi.write(file);
						
						fi.delete();
					}
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		vo.setPhotos(photoList);
		return vo;
	}
}
