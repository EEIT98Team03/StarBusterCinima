package booking.model.dao;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;

import films.model.dao.FilmHibernateDAO;

public class changeimgtobyte {

	public static void main(String[] args) throws IOException {
		int filmId = 100;
		int i =0 ;
		
		// 轉成byte array C:\Users\Student\Desktop
		BufferedImage originalImage = ImageIO.read(new File("C:/Users/Student/Desktop/aaa.jpg"));
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		ImageIO.write(originalImage, "jpg", baos);
		baos.flush();
		byte[] imageInByte = baos.toByteArray();
		
		
//		for( i =0 ;i<imageInByte.length;i++) {
//			System.out.print(imageInByte[i]);
//				
//		}
//		System.out.print("\n");	
//		System.out.print(i);	

		// 轉回image
		// BufferedImage img = ImageIO.read(new ByteArrayInputStream(imageInByte));
		// File outputfile = new File("C:/Users/Student/Desktop/4535364565464586.jpg");
		// ImageIO.write(img,"jpg",outputfile);
	}
}
