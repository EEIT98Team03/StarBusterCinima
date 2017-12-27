package misc;

import java.util.ArrayList;
import java.util.List;

public class FilmKeywords {
	private static String userMessage = "abassdf亦fs123123sdf";
	private static List<String> list = new ArrayList<String>();

	public static void main(String[] args) {
		if(!userMessage.matches("^[A-Za-z0-9]{"+userMessage.length()+"}$")) {//判斷是否為純數字or純英文or純英數字混合
			System.out.println(userMessage+"合法");
		}
	}

	// 最受歡迎的"熱門" "電影"?
	//
	// "正義聯盟"這部"電影"還有"座位"嗎?
	//
	// 最"熱銷"的"商品"?
	//
	// 有賣相關"正義聯盟"的"商品"嗎?
	// 主 子
	// 電影=> 熱門 -> 座位 ->
	// or電影名子 or 基本資料
	// 商品=> 熱銷 -> 詳細資料
	// or商品名稱
	public List<String> method() {
		// if (userMessage.contains("")) {
		// list.add("");
		// return list;
		// }
		if(userMessage!=null && userMessage.trim().length()!=0) {
//			1.都是數字
//			2.有特殊符號
//			3.都是英文
//			4.英數字混合
			if(userMessage.matches("^["+userMessage.length()+"]*$")) {
				
			}
		}
		if (userMessage.contains("電影")) {
			if (userMessage.contains("")) {
				list.add("");
				return list;
			} else if (userMessage.contains("熱門")) {
				list.add("熱門電影");
				return list;
			}

			list.add("film");
			return list;

		} else if (userMessage.contains("商品")) {

			list.add("film");
			return list;

		}

		return list;
	}
}
