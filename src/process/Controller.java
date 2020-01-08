/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package process;

import static java.lang.Integer.parseInt;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Map;
import java.util.Scanner;
import model.Barang;
import model.Keranjang;
import model.Transaksi;

/**
 *
 * @author raqaelf
 */
public class Controller {

    Scanner sc = new Scanner(System.in);
    StringBuffer sb = new StringBuffer();
    LocalDateTime now = LocalDateTime.now();
    

    public void inputBarang() {
        System.out.println("Masukkan Nama Barang");
        String namaBarang = sc.next();
        System.out.println("Masukkan Harga Barang");
        Integer hargaBarang = sc.nextInt();
        System.out.println("Masukkan Stock Barang");
        Integer stockBarang = sc.nextInt();
        Barang.insert(namaBarang, hargaBarang, stockBarang);
    }

    public void editBarang() {
        System.out.println("Masukkan ID Barang");
        Integer idBarang = sc.nextInt();
        System.out.println("Masukkan Nama Barang");
        String namaBarang = sc.next();
        System.out.println("Masukkan Harga Barang");
        Integer hargaBarang = sc.nextInt();
        System.out.println("Masukkan Stock Barang");
        Integer stockBarang = sc.nextInt();
//        System.out.println("id "+ idBarang +"nama " +namaBarang+"harga "+hargaBarang+"stock "+stockBarang);
        Barang.update(idBarang, namaBarang, hargaBarang, stockBarang);
    }

    public void deleteBarang() {
        System.out.println("Masukkan ID Barang");
        Integer idBarang = sc.nextInt();
        Barang.delete(idBarang);
    }

    public void beliBarang() {
        String beliLagi = "y";
        Integer totalTransaksi=0;
        String idKeranjang = DateTimeFormatter.ofPattern("yyMdHHmms").format(now);
        while (beliLagi.equals("y")) {
            System.out.println("Masukkan ID Barang");
            Integer idBarang = sc.nextInt();
            Map<String, String> barang = Barang.select(idBarang);
            String nmBarang = barang.get("namaBarang");
            Integer hrgBarang = Integer.valueOf(barang.get("hargaBarang"));
            System.out.println("Barang yang dibeli : " + nmBarang);
            System.out.println("Masukkan Quantity");
            Integer qtyBarang = sc.nextInt();
            Integer total = hrgBarang * qtyBarang;
            Keranjang.insert(Integer.valueOf(idKeranjang), idBarang, qtyBarang, total);
            totalTransaksi+=total;
            System.out.println("Beli lagi ?");
            beliLagi = sc.next();
        }
        Transaksi.insert(Integer.valueOf(idKeranjang), "Raqael", totalTransaksi);
        Keranjang.select(Integer.valueOf(idKeranjang));

    }

//    public static void main(String[] args) {
////        this.beliBarang();
//        Controller ctr = new Controller();
//        ctr.beliBarang();
//    }
}
