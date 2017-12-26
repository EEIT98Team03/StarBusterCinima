package misc;

import java.io.CharArrayWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Reader;
import java.sql.Blob;
import java.sql.Clob;

import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialClob;

public class SystemUtils {


	public static Blob fileToBlob(String filename) throws IOException {
		Blob blob = null;
		File f = new File(filename);
		int len = (int) f.length();
		byte[] b = new byte[len];
		try (FileInputStream fis = new FileInputStream(f);) {

			fis.read(b);
			blob = new SerialBlob(b);
		} catch (Exception ex) {
			ex.getLocalizedMessage();
		}
		return blob;
	}

	public static void blobToFile(Blob blob, File file) {
		try (InputStream is = blob.getBinaryStream(); OutputStream os = new FileOutputStream(file);
	
		) {
			byte[] b = new byte[8192];
			int len = 0;
			while ((len = is.read(b)) != -1) {
				os.write(b, 0, len);
			}
	
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public static void saveBytesToFile(Blob picture, File file) {
		try (InputStream is = picture.getBinaryStream(); OutputStream os = new FileOutputStream(file);) {
			byte[] b = new byte[819200];
			int len = 0;
			while ((len = is.read(b)) != -1) {
				os.write(b, 0, len);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public static Clob fileToClob(String filename,String encoding ) {
		Clob clob = null;
		try (FileInputStream fis = new FileInputStream(filename);
				InputStreamReader in = new InputStreamReader(fis, encoding);
				CharArrayWriter caw = new CharArrayWriter();) {
			int len = 0;
			char[] ca = new char[8192];
			while ((len = in.read(ca)) != -1) {
				caw.write(ca, 0, len);
			}
			clob = new SerialClob(caw.toCharArray());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return clob;
	}

	public static void clobToFile(Clob clob, File file, String encoding) {
		try (Reader rd = clob.getCharacterStream();
				FileOutputStream fos = new FileOutputStream(file);
				OutputStreamWriter osw = new OutputStreamWriter(fos, encoding);) {
			char[] ca = new char[8192];
			int len = 0;
			while ((len = rd.read(ca)) != -1) {
				osw.write(ca, 0, len);
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}

	public static void saveCharsToFile(Clob comment, File file) {
		try (Reader reader = comment.getCharacterStream();
				FileOutputStream fos = new FileOutputStream(file);
				OutputStreamWriter osw = new OutputStreamWriter(fos);) {
			int len = 0;
			char[] c = new char[819200];
			while ((len = reader.read(c)) != -1) {
				osw.write(c, 0, len);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	
	}

	// CLOB 公用程式: 將CLOB物件轉為字元陣列
	public static char[] clobToCharArray(Clob clob) {
		try (Reader rd = clob.getCharacterStream(); CharArrayWriter caw = new CharArrayWriter();) {
			char[] ca = new char[8192];
			int len = 0;
			while ((len = rd.read(ca)) != -1) {
				caw.write(ca, 0, len);
			}
			char[] output = caw.toCharArray();
			return output;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}

	public static byte[] fileToBytes(String filename) {
		File f = new File(filename);
		int len = (int) f.length();
		byte[] b = new byte[len];
		try (FileInputStream fis = new FileInputStream(f);) {
			fis.read(b);
		} catch (Exception ex) {
			ex.getLocalizedMessage();
		}
		return b;
	}

	public static void saveBytesToFile(byte[] picture, int placeId) {
		String folder = "C:\\_jdbc\\Java004";
		File dir = new File(folder);
		if (!dir.exists())
			dir.mkdirs();
		String filename = "picture" + placeId + ".png";
		File file = new File(dir, filename);
		try (FileOutputStream fos = new FileOutputStream(file);) {
			fos.write(picture);
		} catch (IOException ex) {
			ex.printStackTrace();
		}
	}

	public static char[] fileToChars(String filename) {
		try (FileInputStream fis = new FileInputStream(filename);
				InputStreamReader in = new InputStreamReader(fis, "BIG5");
				CharArrayWriter caw = new CharArrayWriter();) {
			int len = 0;
			char[] ca = new char[8192];
			while ((len = in.read(ca)) != -1) {
				caw.write(ca, 0, len);
			}
			return caw.toCharArray();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}

	// -----------------
	public static void saveCharsToFile(char[] comment, int placeId) {
		String folder = "C:\\_jdbc\\Java004";
		File dir = new File(folder);
		if (!dir.exists())
			dir.mkdirs();
		String filename = "comment" + placeId + ".txt";
		File file = new File(dir, filename);
		try (FileOutputStream fos = new FileOutputStream(file);
				OutputStreamWriter osw = new OutputStreamWriter(fos);
				PrintWriter pw = new PrintWriter(osw);) {
			pw.println(new String(comment));
		} catch (IOException ex) {
			ex.printStackTrace();
		}
	
	}
}
