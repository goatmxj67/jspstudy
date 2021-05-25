import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class Test {

	public static void main(String[] args) {

		String responseBody = "{\r\n" + 
				"      \"staff\": [\r\n" + 
				"        {\r\n" + 
				"          \"name\": \"브레드\",\r\n" + 
				"          \"age\": 30\r\n" + 
				"        },\r\n" + 
				"        {\r\n" + 
				"          \"name\": \"제임스\",\r\n" + 
				"          \"age\": 40\r\n" + 
				"        },\r\n" + 
				"  ]\r\n" + 
				"}";
		
		// 파싱 연습
		JSONParser parser = new JSONParser();
		JSONObject obj = null;
		try {
			obj = (JSONObject)parser.parse(responseBody);  // parse() 메소드는 Object를 반환하므로 캐스팅해야 한다.
			String name = obj.get("name").toString();
			long age = (long)obj.get("age");
			System.out.println("이름: " + name + ", 나이: " + age);
			JSONArray staff = (JSONArray)obj.get("staff");
			for (int i = 0; i < staff.size(); i++) {
				JSONObject obj2 = (JSONObject)staff.get(i);
				String name2 = obj2.get("name").toString();
				long age2 = (long)obj2.get("age");
				System.out.println("이름: " + name2 + ",나이: " + age2);
			}
		} catch (Exception e) {  // ParseException e
			e.printStackTrace();
		}
		
	}

}
