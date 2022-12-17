import java.io.*;
import java.util.ArrayList;

public class main {
	public static void main(String[] args) {
		for(int i = 1; i<=6; i++) {
			try {
				File fs = new File("src/AM107-"+i+".txt");
				FileReader read = new FileReader(fs);
				BufferedReader br = new BufferedReader(read);
				StringBuffer sb = new StringBuffer(); 
				String line;
				sb.append("AM107-"+i+"\n");
				while((line = br.readLine()) != null)
				{
					
					sb.append(line);
					sb.append("\n");
				}
				read.close();
				System.out.println(sb.toString());
			} catch (IOException e ) {
				//System.out.println("Capteur non demandé \n");
			}
		}
	}
}

